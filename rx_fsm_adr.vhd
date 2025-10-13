library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- ============================================================================
-- Address Reader - VHDL-93
-- ----------------------------------------------------------------------------
-- No data input. Outputs an address that:
--   - starts at 10 on the first valid='1' after reset/idle,
--   - increments by 1 on each cycle with valid='1',
--   - stops incrementing when it reaches (10 + size),
--   - holds the final address until valid deasserts (frame end), then
--     returns to idle ready for a new frame.
--
-- 'size' is the payload length in bytes for the current frame and is latched
-- at the start of counting (first valid='1').
-- ============================================================================
entity rx_fsm_adr is
  port (
    clock : in std_logic;
    reset : in std_logic;

    valid     : in std_logic; -- byte strobe
    tready    : in std_logic; -- Transmit Ready Flag
    tlast     : in std_logic; -- Transmit Final Flag
    fcs_valid : in std_logic; -- Valid FCS Check
    size      : in std_logic_vector(15 downto 0); -- payload length (bytes)

    axi_en    : out std_logic; -- axi4 bus enable flag
    crc_en    : out std_logic; -- CRC enable generation variable
    begin_fcs : out std_logic; -- Flag to begin generation of the comparison FCS CRC

    addr : out std_logic_vector(10 downto 0) -- address output
  );
end entity;

architecture Behavioral of rx_fsm_adr is
  type state_t is (IDLE, CRC, AXI);
  signal state, next_state : state_t := IDLE;

  signal addr_reg : unsigned(10 downto 0) := to_unsigned(10, addr'length);
  signal size_lat : unsigned(15 downto 0) := (others => '0');
  signal cnt      : unsigned(1 downto 0)  := "00"; --! counter for CRC failure detection
  signal val_reg  : std_logic             := '0'; --! register to hold valid

  constant ADDR_BASE : unsigned(10 downto 0) := to_unsigned(10, 11);
begin
  --addr <= std_logic_vector(addr_reg);

  ---------------------------------------------------------------------------
  -- Clock Based Code
  ---------------------------------------------------------------------------
  process (clock, reset)
  begin
    if rising_edge(clock) then
      if reset = '0' then
        state     <= IDLE;
        addr_reg  <= ADDR_BASE;
        size_lat  <= (others => '0');
        begin_fcs <= '0';
        cnt       <= "00";
        --val_reg   <= '0';
    
      else
        state <= next_state;
      end if;

      if state = IDLE then
        begin_fcs <= '0';
        if valid = '1' then
          size_lat <= unsigned(size); --! grab payload size
        end if;
      end if;

      if state = IDLE and next_state = CRC then
        addr_reg <= to_unsigned(11, addr_reg'length);
      end if;

      if state = CRC then
        if addr_reg < (ADDR_BASE + resize(size_lat, addr_reg'length) - 6) and cnt = "00" then --  -2 cycles -4 for crc bytes
          addr_reg <= addr_reg + 1;
        elsif addr_reg = (ADDR_BASE + resize(size_lat, addr_reg'length) - 6) and cnt = "00" then
          addr_reg  <= addr_reg + 1;
          begin_fcs <= '1';
        elsif addr_reg < (ADDR_BASE + resize(size_lat, addr_reg'length) - 1) and cnt = "00" then
          addr_reg <= addr_reg + 1;
        else
          addr_reg <= ADDR_BASE;
          cnt      <= cnt + 1;
        end if;
      end if;

      if state = CRC and next_state = AXI then
        addr_reg  <= to_unsigned(11, addr_reg'length);
      end if;

      if state = AXI and tlast = '0' then
        addr_reg <= addr_reg + 1;
      end if;

      if state = CRC and (next_state = IDLE or next_state = AXI) then
        cnt       <= "00";
        begin_fcs <= '0';
        size_lat  <= (others => '0');
      end if;

      if (state = CRC or state = AXI) and next_state = IDLE then
        addr_reg  <= ADDR_BASE;
      end if;
    end if;
  end process;

  ---------------------------------------------------------------------------
  -- State Machine :D 
  ---------------------------------------------------------------------------
  process (state, valid, tlast, fcs_valid, cnt, tready)
  begin
    next_state <= state;

    case state is
      when IDLE =>
        if (valid = '1' or val_reg = '1') and tready = '1' then
          next_state <= CRC;
          val_reg <= '0';
        elsif valid = '1' then
          val_reg <= '1';
        end if;

      when CRC =>
        if fcs_valid = '1' then --! CRC PASS
          next_state <= AXI;
        elsif cnt = "10" then --! CRC FAIL
          next_state <= IDLE;
        end if;

      when AXI =>
        if tlast = '1' then
          next_state <= IDLE;
        end if;

    end case;
  end process;

  ---------------------------------------------------------------------------
  -- Direct State outputs (Address, CRC Enable, AXI Enable)
  ---------------------------------------------------------------------------
  addr <= std_logic_vector(addr_reg);

  with next_state select
    crc_en <=
    '1' when CRC,
    '0' when others;

  with next_state select
    axi_en <=
    '1' when AXI,
    tlast when others;

end architecture;
