library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity tb_fcs_checker is
end entity;

architecture sim of tb_fcs_checker is

  -- DUT component
  component fcs_checker
    port (
      clk : in std_logic;
      rst : in std_logic;

      data      : in std_logic_vector(7 downto 0);
      enable    : in std_logic;
      begin_fcs : in std_logic;

      fcs_valid : out std_logic
    );
  end component;

  -- Signals
  signal clk       : std_logic                    := '0';
  signal rst       : std_logic                    := '1';
  signal data      : std_logic_vector(7 downto 0) := (others => '0');
  signal enable    : std_logic                    := '0';
  signal begin_fcs : std_logic                    := '0';
  signal fcs_valid : std_logic;

  -- Clock period
  constant clk_period : time := 10 ns;

  -- Example Ethernet frame (dummy data)
  type frame_array is array (natural range <>) of std_logic_vector(7 downto 0);
  constant test_frame : frame_array := (
  x"E6", x"53", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3", x"E3" -- payload
  );

  -- Precomputed CRC-32 (Ethernet FCS) for above payload
  -- CRC-32 of 0x01 0x02 0x03 0x04 = 0xB63CFBCD (normal CRC-32, reflected form)
  constant fcs_bytes : frame_array := (
  x"24", x"64", x"89", x"8C" -- sent LSB first if needed by your DUT 648D3D79
  );

begin

  -- Instantiate DUT
  uut : entity work.fcs_checker
    port map
    (
      clk       => clk,
      rst       => rst,
      data      => data,
      enable    => enable,
      begin_fcs => begin_fcs,
      fcs_valid => fcs_valid
    );

  -- Clock generation
  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
    end loop;
  end process;

  -- Stimulus process
  stim_proc : process
    variable i : integer;
  begin
    -- Apply reset
    rst <= '0';
    wait for 2 * clk_period;
    rst <= '1';
    wait for clk_period;

    -- Send payload
    for i in test_frame'range loop
      data   <= test_frame(i);
      enable <= '1';
      wait for clk_period;
    end loop;

    enable    <= '0';
    begin_fcs <= '1';
    wait for clk_period;

    -- Send FCS bytes
    for i in fcs_bytes'range loop
      data <= fcs_bytes(i);
      if i = fcs_bytes'high then
        enable <= '0';
      end if;
      wait for clk_period;
    end loop;

    -- Deassert signals
    enable    <= '0';
    begin_fcs <= '0';
    wait for clk_period;

    -- Check FCS result
    if fcs_valid = '1' then
    report "FCS check PASSED" severity note;
  else
    report "FCS check FAILED" severity error;
  end if;

  wait;
end process;

end architecture;
