-- tb_piso.vhd : Testbench for sr_piso.vhd
--
-- Run with GHDL:
--   ghdl -a sr_piso.vhd sr_piso_tb.vhd
--   ghdl -e sr_piso_tb
--   ghdl -r sr_piso_tb --wave=sr_piso_tb.ghw
--
--   Then view waveform:
--   gtkwave sr_piso_tb.ghw

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity sr_piso_tb is
end entity;

architecture sim of sr_piso_tb is
  -- DUT generics
  constant WIDTH      : positive := 8;
  constant CLK_PERIOD : time     := 10 ns; -- 100 MHz

  -- DUT ports
  signal clk        : std_logic                            := '1';
  signal rst_n      : std_logic                            := '0';
  signal byte_in    : std_logic_vector(WIDTH - 1 downto 0) := (others => '0');
  signal byte_valid : std_logic                            := '0';
  signal byte_ready : std_logic;
  signal bit_out    : std_logic;
  signal bit_valid  : std_logic;

begin
  --------------------------------------------------------------------
  -- Clock generator
  --------------------------------------------------------------------
  clk <= not clk after CLK_PERIOD/2;

  --------------------------------------------------------------------
  -- DUT instantiation
  --------------------------------------------------------------------
  uut : entity work.sr_piso
    generic map(
      WIDTH     => WIDTH,
      BIT_DELAY => 10
    )
    port map
    (
      clk        => clk,
      resetn     => rst_n,
      byte_in    => byte_in,
      byte_valid => byte_valid,
      byte_ready => byte_ready,
      bit_out    => bit_out,
      bit_valid  => bit_valid
    );

  --------------------------------------------------------------------
  -- Stimulus process
  --------------------------------------------------------------------
  stim_proc : process
  begin
    -- Hold reset low for a few cycles
    rst_n <= '0';
    wait for 5 * CLK_PERIOD;
    rst_n <= '1';
    wait for 2 * CLK_PERIOD;

    -- Send first word (0xA5 = 10100101)
    wait until rising_edge(clk) and byte_ready = '1';
    byte_in    <= x"A5";
    byte_valid <= '1';
    wait until rising_edge(clk); -- one cycle pulse
    byte_valid <= '0';

    wait for 880 ns;

    -- Send second word (0x3C = 00111100)
    wait until rising_edge(clk) and byte_ready = '1';
    byte_in    <= x"3C";
    byte_valid <= '1';
    wait until rising_edge(clk);
    byte_valid <= '0';

    -- Send third word (0x5A = 01011010)
    wait until rising_edge(clk) and byte_ready = '1';
    byte_in    <= x"5A";
    byte_valid <= '1';
    wait until rising_edge(clk);
    byte_valid <= '0';

    wait for 1000 ns;

    -- Finish
    assert false report "Simulation finished." severity failure;
  end process;
end architecture;
