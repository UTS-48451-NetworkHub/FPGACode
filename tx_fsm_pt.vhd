library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_pt is
  port (
    -- Mandatory Signals
    clk    : in std_logic; --! 100 MHz Clock
    resetn : in std_logic; --! Active low reset
    -- Control Signals
    tx_active    : out std_logic; --! Tell the PHY when a TX transaction starts
    byte_valid   : out std_logic; --! Tell the PISO SR when a byte is valid on the data bus
    byte_ready   : in std_logic; --! PISO SR is ready to receive a new byte
    packet_ready : out std_logic; --! Packet is ready to be received from AXI-S
    packet_valid : in std_logic; --! Packet is valid in RAM and ready to be transmitted
    -- Data Signals
    addr : out std_logic_vector(10 downto 0); --! RAM Data Address
    data : in std_logic_vector(7 downto 0) --! RAM Data
  );
end tx_fsm_pt;

architecture arch of tx_fsm_pt is

  --! Packet Transmission FSM states
  type state_t is (
    IDLE, --! Awaiting new transmission 
    LOAD_LENGTH_UPPER, --! Load the upper part of packet length
    LOAD_LENGTH_LOWER, --! Load the lower part of packet length
    TX_LOAD, --! Load the next address's data into the shift register
    TX_FIRST, --! Load the first byte (set tx active high)
    TX_WAIT, --! Wait for this byte to finish shifting out
    TX_LAST, --! Load the last byte (set tx active low at completion)
    IFG --! Inter-frame-gap between transmission and idle state.
  );
  --! FSM State Variables
  signal state, next_state : state_t;

  --! Memory Read FSM states
  type mem_state_t is (
    LADDR, --! Loading address.
    VALID --! Data is valid this cycle.
  );
  --! Memory Read FSM State Variables
  signal mem_state, mem_next_state : mem_state_t;

  -- Memory Read Control Signals
  --! Memory read request
  signal r_mem_read_req   : std_logic := '0';
  --! Memory read is valid this cycle
  signal r_mem_read_valid : std_logic := '0';

  --! Packet Length Counter
  signal r_packet_length : unsigned(10 downto 0) := (others => '0');

  --! Address Counter
  signal cnt_addr : unsigned(10 downto 0) := (others => '0');

  --! IFG Counter
  signal cnt_IFG : unsigned (10 downto 0) := (others => '0');

  --! FSM Flag First Byte Output
  signal f_first_byte : std_logic := '0';
  --! IFG Counter Reuse, Max for LAST bit delay
  constant IFG_LAST_BIT : integer := 80;
  --! IFG Counter Finish Delay
  constant IFG_MAX      : integer := 1040;

begin

  ------------------------------------------------------------------
  -- Sequential Processes
  ------------------------------------------------------------------
  --! Sequential Logic Update & State Register Process
  process (clk, resetn)
  begin
    if resetn = '0' then
      state      <= IDLE;
      mem_state  <= LADDR;
      byte_valid <= '0';
      tx_active  <= '0';

    elsif rising_edge(clk) then
      -- Move states forward
      state     <= next_state;
      mem_state <= mem_next_state;

      -- State Change: IDLE to LOAD_LENGTH_UPPER
      if state = IDLE and next_state = LOAD_LENGTH_UPPER then
        r_mem_read_req <= '1';
      end if;

      -- State: LOAD_LENGTH_UPPER
      if state = LOAD_LENGTH_UPPER then
        if r_mem_read_valid = '1' then
          -- Load the LSB of RAM data into the MSB of packet length
          r_packet_length(10 downto 8) <= unsigned(data(2 downto 0));
        end if;
      end if;

      -- State: LOAD_LENGTH_LOWER
      if state = LOAD_LENGTH_LOWER then
        if r_mem_read_valid = '1' then
          -- Load the whole of the ram data into the LSB of packet length
          r_packet_length(7 downto 0) <= unsigned(data);
        end if;
      end if;

      -- State Change: LOAD_LENGTH_LOWER to TX_LOAD
      if state = LOAD_LENGTH_LOWER and next_state = TX_LOAD then
        -- Move ADDR to start of preamble
        cnt_addr <= to_unsigned(2, cnt_addr'length);
        -- Set flag to specify that this is the first byte to go out
        f_first_byte <= '1';
      end if;

      -- State: TX_LOAD
      if state = TX_LOAD then
        -- End the memory transaction
        r_mem_read_req <= '0';
        -- Trigger the shift register to read in
        byte_valid <= '1';
      end if;

      -- State Change: TX_LOAD to TX_FIRST/TX_WAIT
      if state = TX_LOAD and (next_state = TX_FIRST or next_state = TX_WAIT) then
        -- End byte valid signal
        byte_valid <= '0';
        cnt_addr   <= cnt_addr + 1;
      end if;

      -- State: TX_FIRST
      if state = TX_FIRST then
        -- First byte has been reached, dont come back here.
        f_first_byte <= '0';
        tx_active    <= '1';
      end if;

      -- State Change: TX_WAIT to TX_LOAD
      if state = TX_WAIT and next_state = TX_LOAD then
        r_mem_read_req <= '1';
      end if;

      -- State Change; TX_WAIT to TX_LAST
      if state = TX_WAIT and next_state = TX_LAST then
        -- End byte valid signal
        byte_valid <= '0';
        cnt_addr   <= (others => '0');
      end if;

      -- State Change: TX_LAST to IFG
      if state = TX_LAST and next_state = IFG then
        tx_active <= '0';
      end if;

      -- State: IFG/TX_LAST
      if state = IFG or state = TX_LAST then
        cnt_IFG <= cnt_IFG + 1;
      end if;
    end if;
  end process;

  ------------------------------------------------------------------
  -- Combinatorial Processes
  ------------------------------------------------------------------
  --! Combinatorial logic for FSM state updates
  p_main_fsm : process (state, packet_valid, byte_ready, r_mem_read_valid, f_first_byte, cnt_addr, r_packet_length, cnt_IFG)
  begin
    -- Default state assignment
    next_state <= state;

    -- State case, set next state
    case state is
      when IDLE =>
        -- Wait till packet is valid in RAM
        if packet_valid = '1' then
          next_state <= LOAD_LENGTH_UPPER;
        end if;

      when LOAD_LENGTH_UPPER =>
        if r_mem_read_valid = '1' then
          next_state <= LOAD_LENGTH_LOWER;
        end if;

      when LOAD_LENGTH_LOWER =>
        -- Wait till length transaction is complete, SIPO will be ready since this is packet start
        if r_mem_read_valid = '1' then
          next_state <= TX_LOAD;
        end if;

      when TX_LOAD =>
        if r_mem_read_valid = '1' then
          if f_first_byte = '1' then
            next_state <= TX_FIRST;
          else
            next_state <= TX_WAIT;
          end if;
        end if;

      when TX_FIRST =>
        next_state <= TX_WAIT;

      when TX_WAIT =>
        -- Move to IFG if transmission is complete.
        if cnt_addr = r_packet_length + 1 then
          next_state <= TX_LAST;
          -- Check if SIPO is ready
        elsif byte_ready = '1' then
          next_state <= TX_LOAD;
        end if;

      when TX_LAST =>
        if cnt_IFG = to_unsigned(IFG_LAST_BIT, cnt_IFG'length) then
          next_state <= IFG;
        end if;

      when IFG =>
        if cnt_IFG = to_unsigned(IFG_MAX, cnt_IFG'length) then
          next_state <= IDLE;
        end if;

    end case;
  end process;

  p_ram_fsm : process (mem_state, r_mem_read_req)
  begin
    -- Default state assignment
    mem_next_state <= mem_state;

    -- State case to set next state
    case mem_state is
      when LADDR =>
        r_mem_read_valid <= '0';
        if r_mem_read_req = '1' then
          mem_next_state <= VALID;
        end if;

      when VALID =>
        r_mem_read_valid <= '1';
        mem_next_state   <= LADDR;

    end case;
  end process;

  ------------------------------------------------------------------
  -- Direct State Outputs
  ------------------------------------------------------------------
  with state select
    packet_ready <=
    '1' when IDLE,
    '0' when others;

  with state select
    addr <=
    std_logic_vector(to_unsigned(0, addr'length)) when LOAD_LENGTH_UPPER,
    std_logic_vector(to_unsigned(1, addr'length)) when LOAD_LENGTH_LOWER,
    std_logic_vector(cnt_addr) when TX_WAIT | TX_LOAD | TX_FIRST | TX_LAST,
    std_logic_vector(to_unsigned(79, addr'length)) when others;

end architecture arch;
