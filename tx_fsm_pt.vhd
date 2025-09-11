library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_pt is
  port (
    -- Mandatory Signals
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Control Signals
    tx_active       : out std_logic;
    nlp_request : out std_logic;
    next_byte       : out std_logic;
    ready_next_byte : in std_logic;
    receive_ready   : out std_logic; -- Tell AXI FSM that it is free to write to the RAM.
    tx_req          : in std_logic; -- AXI FSM has received a full packet to ram and transmission is required.
    -- Data Signals
    addr : out std_logic_vector(10 downto 0);
    data : in std_logic_vector(7 downto 0)
  );
end tx_fsm_pt;

architecture arch of tx_fsm_pt is

  -- State Machine States
  type state_t is (IDLE, LOAD_LENGTH_UPPER, LOAD_LENGTH_LOWER, TX_START, SEND_PREAMBLE, SEND_FRAME, IFG, ERROR);
  signal state, next_state : state_t;

  -- Address & IFG Delay Counter
  signal r_addr_counter : unsigned(10 downto 0) := (others => '0');

  -- Packet Length Counter
  signal r_packet_length : unsigned(10 downto 0) := (others => '0');

  -- Preamble Counter
  signal r_preamble_counter : unsigned(3 downto 0) := (others => '0');

begin

  -- State Register
  process (clk, resetn)
  begin
    if resetn = '0' then
      state <= IDLE;

    elsif rising_edge(clk) then
      state <= next_state;

    end if;

    -- In any case, if the next_byte signal is sent we only want that to last one clock cycle.
    if next_byte = '1' then
      next_byte <= '0';
    end if;
  end process;

  -- Next State Logic
  process (state, tx_req, ready_next_byte, data)
  begin
    -- Default state assignment
    next_state <= state;

    -- State case, set next state
    case state is
      when IDLE =>
        -- Data is ready in RAM, let's start transmitting.
        -- Begin by changing state to load length upper.
        if tx_req = '1' then
          next_state <= LOAD_LENGTH_UPPER;
        end if;

      when LOAD_LENGTH_UPPER =>
        -- Load the LSB of RAM data into the MSB of packet length
        r_packet_length(10 downto 8) <= unsigned(data(2 downto 0));
        -- Move to lower loading state
        next_state <= LOAD_LENGTH_LOWER;

      when LOAD_LENGTH_LOWER =>
        -- Load the whole of the ram data into the LSB of packet length
        r_packet_length(7 downto 0) <= unsigned(data);
        -- Move to the preamble loading state & prepare preamble counter
        next_state         <= TX_START;
        r_preamble_counter <= to_unsigned(2, r_preamble_counter'length);

      when TX_START =>
        -- Add 10 to the packet length to account for length and preamable
        r_packet_length <= r_packet_length + 10;

        -- Make sure shift register is not busy before TX transaction starts (error)
        if ready_next_byte = '0' then
          next_state <= ERROR;
        else
          -- Set tx_active high to prepare for first data transmission & next byte high to shift into the register
          tx_active <= '1';
          next_byte <= '1';
          -- Move to next state
          next_state <= SEND_PREAMBLE;
        end if;

      when SEND_PREAMBLE =>
        -- Check if we are ready for the next byte to be sent or not
        if ready_next_byte = '1' then
          -- Increment counters for preamable
          r_preamble_counter <= r_preamble_counter + 1;
          next_byte          <= '1';
        end if;

        -- End Preamable Phase if preamble counter length is reached.
        if r_preamble_counter = to_unsigned(8, r_preamble_counter'length) then
          -- Setup counters
          r_addr_counter <= to_unsigned(10, r_addr_counter'length);
          -- Move to next state
          next_state <= SEND_FRAME;
        end if;

      when SEND_FRAME =>
        -- Check if we are ready for the next byte to be sent or not
        if ready_next_byte = '1' then
          -- Increment address counter
          r_addr_counter <= r_addr_counter + 1;
          next_byte      <= '1';
        end if;

        -- Move to IFG & end tx transaction once send is complete
        if (r_addr_counter = r_packet_length) then
          tx_active <= '0';
          r_addr_counter <= to_unsigned(0, r_addr_counter'length);
          next_state <= IFG;
        end if;

      when IFG =>
        -- Count to 960 (12 bit times * 10x overspeed * 8 bits/byte) and then move to idle.
        r_addr_counter <= r_addr_counter + 1;
        if (r_addr_counter = to_unsigned(960, r_addr_counter'length)) then
          next_state <= IDLE;
        end if;

      when others =>
        next_state <= ERROR;
    end case;
  end process;

  -- Outputs (State-only dependence)
  receive_ready <= '1'
    when
    (state = IDLE or state = IFG)
    else
    '0';

  with state select
    addr <=
    std_logic_vector(to_unsigned(0, r_addr_counter'length)) when LOAD_LENGTH_UPPER,
    std_logic_vector(to_unsigned(1, r_addr_counter'length)) when LOAD_LENGTH_LOWER,
    std_logic_vector(r_preamble_counter) when TX_START | SEND_PREAMBLE,
    std_logic_vector(r_addr_counter) when SEND_FRAME,
    (others => '0') when others;

  -- TODO: Think about how to implement next_byte / ready_next_byte moore implementation style

end architecture arch;
