library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx_fsm_pr is
  port(
    --mandatory
    clk_in       : in  std_logic;
    resetn       : in  std_logic;
    --control
    byte_valid   : in  std_logic;
    packet_ready : in  std_logic;
    RX_timeout   : in  std_logic;
    wr_en        : out std_logic := '0';
    packet_valid : out std_logic;
    --data
    data_in      : in  std_logic_vector(7 downto 0);
    addr_out     : out std_logic_vector(10 downto 0);
    data_out     : out std_logic_vector(7 downto 0);
    size_out     : out std_logic_vector(15 downto 0)
  );
end rx_fsm_pr;

architecture Behavioral of rx_fsm_pr is

  --! Packet receiving FSM states
  type RX_state is (
    RX_PREAMBLE,                        --! detecting preamble of data stream
    RX_SFD,                             --! detecting SFD of data stream
    RX_DATA,
    RX_SIZE,                            --! reading packet data
    RX_END,                             --! detect end of data stream
    RX_ERROR                            --! Error in the RX bitstream
  );
  signal current_state, next_state : RX_state;

  signal preamble_detect : std_logic := '0'; --! signal for preamble detection
  signal SFD_detect      : std_logic := '0'; --! signal for SFD detection
  signal SIZE_lower      : std_logic := '0'; --! Append lower size byte
  signal SIZE_upper      : std_logic := '0'; --! Append upper size byte
  signal packet_hand     : std_logic := '0'; --! packet valid/ready handshake signal

  signal data_buf : std_logic_vector(7 downto 0) := (others => '0'); --! data buffer for direct state output
  signal cnt_addr : unsigned(10 downto 0)        := (others => '0'); --! counter for RAM address
  --0-1 -> byte length  2-9 -> preamble+SFD(NOT INCLUDED)  10+ -> PAYLOAD

  signal   cnt_size : unsigned(15 downto 0)         := (others => '0'); --! counter for paylaod size (NO. of bytes)
  --upper -> 0 MSB
  --lower -> 1 LSB
  constant preamble : std_logic_vector(55 downto 0) := x"55555555555555"; --!preamble constant
  constant SFD      : std_logic_vector(7 downto 0)  := x"D5"; --!SFD constant

begin

  process(clk_in, resetn)
    variable data_reg : std_logic_vector(55 downto 0) := (others => '0'); --! register to detect preamble
  begin
    if resetn = '0' then
      current_state   <= RX_PREAMBLE;
      cnt_addr        <= to_unsigned(0, cnt_addr'length);
      cnt_size        <= to_unsigned(0, cnt_size'length);
      preamble_detect <= '0';
      SFD_detect      <= '0';
      SIZE_lower      <= '0';
      SIZE_upper      <= '0';
      packet_hand     <= '0';
      data_buf        <= (others => '0');
      data_reg        := (others => '0');

    elsif rising_edge(clk_in) then
      --! Change states
      current_state <= next_state;

      --! detecting preamble
      if current_state = RX_PREAMBLE and byte_valid = '1' then
        data_reg := data_reg(47 downto 0) & data_in;
        if data_reg = preamble then
          preamble_detect <= '1';
        end if;
      end if;

      --! preamble detected -> signal/register reset
      if current_state = RX_PREAMBLE and next_state = RX_SFD then
        preamble_detect <= '0';
        data_reg        := (others => '0');
      end if;

      --! detecing SFD
      if current_state = RX_SFD then 
        if data_in = SFD then
          SFD_detect <= '1';
        end if;
      end if;

      --! set addrress cnt to 10 when for data packet & enable writing
      if current_state = RX_SFD and next_state = RX_DATA then
        SFD_detect <= '0';
      end if;

      --! Set intial addr to 10 and size to 1 -> increment on each byte
      if current_state = RX_DATA and byte_valid = '1' then
        data_buf <= data_in;
        if cnt_addr = to_unsigned(0, cnt_addr'length) then
          cnt_addr <= to_unsigned(10, cnt_addr'length);
          cnt_size <= to_unsigned(9, cnt_size'length);
        else
          cnt_addr <= cnt_addr + 1;
          cnt_size <= cnt_size + 1;
        end if;
      end if;

      --! append size bytes to beginning of packet
      if next_state = RX_SIZE then
        if SIZE_upper = '0' then
          cnt_addr   <= to_unsigned(0, cnt_addr'length);
          data_buf   <= std_logic_vector(cnt_size(15 downto 8));
          SIZE_upper <= '1';
        end if;
      end if;
      if current_state = RX_SIZE then
        if SIZE_lower = '0' then
          cnt_addr   <= to_unsigned(1, cnt_addr'length);
          data_buf   <= std_logic_vector(cnt_size(7 downto 0));
          SIZE_lower <= '1';
        end if;
      end if;

      --! reset size signals
      if current_state = RX_SIZE and next_state = RX_END then
        SIZE_upper <= '0';
        SIZE_lower <= '0';
        cnt_addr   <= to_unsigned(0, cnt_addr'length);
        data_buf   <= (others => '0');
      end if;

      --! packet handsahke between pr and AXI fsm
      if (current_state = RX_END or next_state = RX_END) and packet_ready = '1' then
        packet_hand <= '1';
      end if;

      --! reset signals for next packet
      if current_state = RX_END and next_state = RX_PREAMBLE then
        packet_hand <= '0';
        cnt_size    <= to_unsigned(0, cnt_size'length);
      end if;
    end if;
  end process;

  main_fsm : process(current_state, preamble_detect, SFD_detect, RX_timeout, packet_hand, SIZE_lower)
  begin
    -- ! Default Assignment
    next_state <= current_state;

    case current_state is

      when RX_PREAMBLE =>
        if preamble_detect = '1' then
          next_state <= RX_SFD;
        end if;

      when RX_SFD =>
        if SFD_detect = '1' then
          next_state <= RX_DATA;
        end if;

      when RX_DATA =>
        if RX_timeout = '1' then
          next_state <= RX_size;
        end if;

      when RX_SIZE =>
        if SIZE_lower = '1' then
          next_state <= RX_END;
        end if;

      when RX_END =>
        if packet_hand = '1' then
          next_state <= RX_PREAMBLE;
        end if;

      when RX_ERROR =>

    end case;
  end process;

  --! direct state outputs

  addr_out <= std_logic_vector(cnt_addr);
  size_out <= std_logic_vector(cnt_size);

  with current_state select wr_en <=
    '1' when RX_DATA,
    '1' when RX_SIZE,
    '0' when others;

  with current_state select data_out <=
    data_buf when RX_DATA,
    data_buf when RX_SIZE,
    (others => '0') when others;

  with current_state select packet_valid <=
    '1' when RX_END,
    '0' when others;

end Behavioral;
