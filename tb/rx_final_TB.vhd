library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity rx_final_TB is
end rx_final_TB;

architecture Behavioral of rx_final_TB is

  -- Component Declaration for the Unit Under Test (UUT)
  component rx_final
    port (
      clk_in        : in std_logic;
      resetn        : in std_logic;
      manchester_in : in std_logic;
      tready        : in std_logic;
      tvalid        : out std_logic;
      tlast         : out std_logic;
      tdata         : out std_logic_vector(7 downto 0)
    );
  end component;

  -- Inputs
  signal clk_in        : std_logic := '0';
  signal resetn        : std_logic := '1';
  signal manchester_in : std_logic := '0';
  signal tready        : std_logic := '1';

  -- Outputs
  signal tdata  : std_logic_vector(7 downto 0) := (others => '0');
  signal tlast  : std_logic                    := '0';
  signal tvalid : std_logic                    := '0';
  -- Clock period definitions
  constant CLK_PERIOD : time := 10 ns; -- 100 MHz
  constant BIT_PERIOD : time := 100 ns; -- 10 Mbps

  -- Test data
  type byte_array is array (0 to 17) of std_logic_vector(7 downto 0);
  signal test_data : byte_array := (
  x"AA", x"AA", x"AA", x"AA", x"AA", x"AA", x"AA", -- 7x preamble
  x"AB", -- 1x SFD
  x"12", x"34", x"56", x"78", x"9A", -- 10 bytes of random payload
  x"BC", x"DE", x"F0", x"11", x"22" -- continued...
  );

  signal current_byte     : integer               := 0;
  signal current_bit      : integer               := 0;
  signal bit_counter      : integer               := 0;
  signal half_bit_counter : integer               := 0;
  signal addr_cnt         : unsigned(10 downto 0) := (others => '0');

begin

  -- Instantiate the Unit Under Test (UUT)
  uut : rx_final
  port map
  (
    clk_in        => clk_in,
    resetn        => resetn,
    manchester_in => manchester_in,
    tready        => tready,
    tvalid        => tvalid,
    tlast         => tlast,
    tdata         => tdata

  );

  -- Clock process definitions
  clk_process : process
  begin
    clk_in <= '0';
    wait for CLK_PERIOD/2;
    clk_in <= '1';
    wait for CLK_PERIOD/2;
  end process;

  -- Manchester encoding process
  mmanchester_gen : process
    constant BIT_RATE         : time                         := 100 ns; -- 10 Mbit/s
    constant PREAMBLE_LEN     : integer                      := 7; -- number of bytes in preamble
    variable byte_count       : integer                      := 0;
    variable byte_count_after : integer                      := 0;
    variable bit_idx          : integer                      := 7;
    variable bit_idx_after    : integer                      := 7;
    variable current_byte     : std_logic_vector(7 downto 0) := x"55";
    variable after_byte       : std_logic_vector(7 downto 0) := x"33";
  begin
    wait for 5 us;
    for byte_count in 0 to PREAMBLE_LEN - 1 loop
      current_byte := x"55"; -- preamble byte
      for bit_idx in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if current_byte(bit_idx) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"54";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"19";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"AC";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for j in 0 to 64 loop
      for byte_count_after in 0 to 0 loop
        after_byte := x"1C";
        for bit_idx_after in 7 downto 0 loop
          -- Manchester encoding: 0 -> 01, 1 -> 10
          if after_byte(bit_idx_after) = '0' then
            manchester_in <= '0';
            wait for BIT_RATE/2;
            manchester_in <= '1';
            wait for BIT_RATE/2;
          else
            manchester_in <= '1';
            wait for BIT_RATE/2;
            manchester_in <= '0';
            wait for BIT_RATE/2;
          end if;
        end loop;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"DB";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"9B";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"76";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"73";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    manchester_in <= '0';
    wait for 5 us;
    tready <= '0';
    wait for 5 us;

    for byte_count in 0 to PREAMBLE_LEN - 1 loop
      current_byte := x"55"; -- preamble byte
      for bit_idx in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if current_byte(bit_idx) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"54";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"19";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"AC";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for j in 0 to 64 loop
      for byte_count_after in 0 to 0 loop
        after_byte := x"1C";
        for bit_idx_after in 7 downto 0 loop
          -- Manchester encoding: 0 -> 01, 1 -> 10
          if after_byte(bit_idx_after) = '0' then
            manchester_in <= '0';
            wait for BIT_RATE/2;
            manchester_in <= '1';
            wait for BIT_RATE/2;
          else
            manchester_in <= '1';
            wait for BIT_RATE/2;
            manchester_in <= '0';
            wait for BIT_RATE/2;
          end if;
        end loop;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"DB";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"9B";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"76";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
    for byte_count_after in 0 to 0 loop
      after_byte := x"73";
      for bit_idx_after in 7 downto 0 loop
        -- Manchester encoding: 0 -> 01, 1 -> 10
        if after_byte(bit_idx_after) = '0' then
          manchester_in <= '0';
          wait for BIT_RATE/2;
          manchester_in <= '1';
          wait for BIT_RATE/2;
        else
          manchester_in <= '1';
          wait for BIT_RATE/2;
          manchester_in <= '0';
          wait for BIT_RATE/2;
        end if;
      end loop;
    end loop;
      wait for 1 us;
      tready <= '1';
      wait for 10 us;
    assert false report "Simulation finished" severity failure;
  end process;
end Behavioral;