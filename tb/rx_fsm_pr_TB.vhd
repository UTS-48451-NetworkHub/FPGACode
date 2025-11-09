library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity tb_rx_fsm_pr is
end tb_rx_fsm_pr;

architecture sim of tb_rx_fsm_pr is
  -- DUT signals
  signal clk_in       : std_logic := '0';
  signal resetn       : std_logic := '1';
  signal byte_valid   : std_logic := '0';
  signal packet_ready : std_logic := '0';
  signal RX_timeout   : std_logic := '0';
  signal wr_en        : std_logic;
  signal packet_valid : std_logic;
  signal data_in      : std_logic_vector(7 downto 0) := (others => '0');
  signal addr_out     : std_logic_vector(10 downto 0);
  signal data_out     : std_logic_vector(7 downto 0)  := (others => '0');
  signal size_out     : std_logic_vector(15 downto 0) := (others => '0');
  -- Preamble = 7 bytes of 0xAA
  constant PREAMBLE_SEQ : std_logic_vector(55 downto 0) := x"AAAAAAAAAAAAAA";

begin
  -- Clock generation
  clk_proc : process
  begin
    clk_in <= '0';
    wait for 5 ns;
    clk_in <= '1';
    wait for 5 ns;
  end process;

  -- DUT instantiation
  dut : entity work.rx_fsm_pr
    port map
    (
      clk_in       => clk_in,
      resetn       => resetn,
      byte_valid   => byte_valid,
      packet_ready => packet_ready,
      RX_timeout   => RX_timeout,
      wr_en        => wr_en,
      packet_valid => packet_valid,
      data_in      => data_in,
      addr_out     => addr_out,
      data_out     => data_out,
      size_out     => size_out

    );

  -- Stimulus
  stim_proc : process
    variable seed1, seed2 : positive := 1; -- seeds for uniform
    variable r            : real;
    variable rand_val     : integer;
  begin
    --packet_ready <= '1';
    wait for 95 ns;
    -- Send preamble (7 x 0xAA)
    for i in 6 downto 0 loop
      data_in    <= PREAMBLE_SEQ((i * 8 + 7) downto i * 8);
      byte_valid <= '1';
      --wait for 5 ns;
      wait for 10 ns;
      byte_valid <= '0';
      --wait for 5 ns;
      wait for 790 ns;
    end loop;
    -- Send SFD (0xAB)
    data_in    <= x"AB";
    byte_valid <= '1';
    wait for 10 ns;
    byte_valid <= '0';
    wait for 790 ns;

    -- Send random payload (e.g. 10 bytes)
    for j in 0 to 9 loop
      uniform(seed1, seed2, r); -- generates 0.0 <= r < 1.0
      rand_val := integer(r * 256.0); -- scale to 0–255
      data_in    <= std_logic_vector(to_unsigned(rand_val, 8));
      byte_valid <= '1';
      wait for 10 ns;
      byte_valid <= '0';
      wait for 790 ns;
    end loop;

    data_in <= (others => '0');
    wait for 100 ns;
    RX_timeout <= '1';
    wait for 10 ns;
    RX_timeout <= '0';
    wait for 100 ns;
    packet_ready <= '1';
    wait for 10 ns;
    packet_ready <= '0';
    wait for 100 ns;

    for i in 6 downto 0 loop
      data_in    <= PREAMBLE_SEQ((i * 8 + 7) downto i * 8);
      byte_valid <= '1';
      --wait for 5 ns;
      wait for 10 ns;
      byte_valid <= '0';
      --wait for 5 ns;
      wait for 790 ns;
    end loop;
    -- Send SFD (0xAB)
    data_in    <= x"AB";
    byte_valid <= '1';
    wait for 10 ns;
    byte_valid <= '0';
    wait for 790 ns;

    -- Send random payload (e.g. 10 bytes)
    for j in 0 to 9 loop
      uniform(seed1, seed2, r); -- generates 0.0 <= r < 1.0
      rand_val := integer(r * 256.0); -- scale to 0–255
      data_in    <= std_logic_vector(to_unsigned(rand_val, 8));
      byte_valid <= '1';
      wait for 10 ns;
      byte_valid <= '0';
      wait for 790 ns;
    end loop;

    data_in <= (others => '0');
    wait for 100 ns;
    RX_timeout <= '1';
    wait for 10 ns;
    RX_timeout <= '0';
    wait for 100 ns;
    packet_ready <= '1';
    wait for 10 ns;
    packet_ready <= '0';
    wait for 100 ns;

    assert false report "Simulation finished." severity failure;
  end process;

end sim;
