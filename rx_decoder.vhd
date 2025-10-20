library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity rx_decoder is
  port (
    clk_in        : in std_logic;
    manchester_in : in std_logic;
    resetn        : in std_logic;
    data_out      : out std_logic := '0';
    RX_timeout    : out std_logic := '0';
    bit_valid     : out std_logic := '0'
  );
end rx_decoder;

architecture Behavioral of rx_decoder is
  signal data_buf        : std_logic_vector(55 downto 0); --!Register to hold incoming edges for clock recovery
  signal manchester_prev : std_logic                    := '0'; --!Prev input to detect edge.
  signal timeout         : std_logic                    := '0'; --!timeout to reset logic
  signal midcapture      : std_logic                    := '0';
  signal midcntsig       : std_logic_vector(3 downto 0) := (others => '0');

  attribute keep                     : boolean;
  attribute keep of midcapture       : signal is true;
  attribute preserve                 : boolean;
  attribute preserve of midcapture   : signal is true;
  attribute mark_debug               : string;
  attribute mark_debug of midcapture : signal is "true";
  attribute noprune                  : boolean;
  attribute noprune of midcapture    : signal is true;

begin
  process (clk_in, resetn)
    variable new_mid   : unsigned(3 downto 0) := (others => '0'); --!location of mid-bit transitions during clock recovery
    variable mid_count : unsigned(3 downto 0) := (others => '0'); --!counter to time mid-bit transitions following clock recovery
    variable mid_loc   : unsigned(3 downto 0) := (others => '0'); --!Location of the mid-bit transitions following clock recovery
  begin
    if resetn = '0' then
      new_mid := (others   => '0');
      mid_loc := (others   => '0');
      data_buf <= (others  => '0');
      mid_count := (others => '0');
      data_out        <= '0';
      manchester_prev <= '0';
      midcapture      <= '0';

    elsif rising_edge(clk_in) then
      manchester_prev <= manchester_in; --!current manchester input

      --! Timeout logic for no transmissions
      if (timeout = '1') then
        new_mid := (others   => '0');
        mid_loc := (others   => '0');
        data_buf <= (others  => '0');
        mid_count := (others => '0');
        data_out        <= '0';
        manchester_prev <= '0';
        midcapture      <= '0';

        -- ! Logic to detect preamble
      elsif (data_buf /= x"AAAAAAAAAAAAAA") then
        -- ! Clock cycles bewteen rising and falling edges is recorded
        if (data_buf /= x"00000000000000") then
          new_mid := new_mid + 1;
        end if;
        --! clock cycles for mid-bit recorded, data shifted into preamble register
        if (manchester_prev /= manchester_in) then
          data_out  <= manchester_in;
          bit_valid <= '1';
          data_buf  <= data_buf(54 downto 0) & manchester_in;
          mid_loc := new_mid;
          new_mid := (others => '0');
        else
          bit_valid <= '0';
        end if;
        --! Logic to decode data after preamble
      else
        --! clock cycles up to mid-bit counted
        midcapture <= '1';
        if (mid_count < mid_loc/2 + 2) then
          mid_count := mid_count + 1;
          midcntsig <= std_logic_vector(mid_count);
          bit_valid <= '0';
        elsif (manchester_prev /= manchester_in) then
          --! Data output at mid-bit
          data_out  <= manchester_in;
          bit_valid <= '1';
          mid_count := (others => '0');
        else
          bit_valid <= '0';
        end if;
      end if;
    end if;
  end process;

  process (clk_in, resetn)
    variable timeout_count : unsigned(6 downto 0) := (others => '0');
  begin
    if resetn = '0' then
      timeout <= '0';
      timeout_count := (others => '0');
      RX_timeout <= '0';

    elsif rising_edge(clk_in) then
      --! Timeout logic
      if data_buf /= x"00000000000000" then
        if timeout = '1' then
          timeout <= '0';
        else
          if manchester_prev /= manchester_in then
            timeout_count := (others => '0');
          else
            if timeout_count = 30 then
              timeout <= '1';
              timeout_count := (others => '0');
            else
              timeout_count := timeout_count + 1;
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

  RX_timeout <= timeout; --can maybe be simplified.
end Behavioral;
