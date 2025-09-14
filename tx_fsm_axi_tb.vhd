library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_axi_tb is
end entity;

architecture sim of tx_fsm_axi_tb is
  -- Signals
  signal clk          : std_logic := '1';
  signal resetn       : std_logic := '0';
  signal packet_ready : std_logic := '0';
  signal packet_valid : std_logic;
  signal wr_en        : std_logic;
  signal tlast        : std_logic := '0';
  signal tready       : std_logic;
  signal tvalid       : std_logic := '0';
  signal addr         : std_logic_vector(10 downto 0);
  signal tdata        : std_logic_vector(7 downto 0) := (others => '0');

  constant CLK_PERIOD : time := 10 ns; -- 100 MHz

  -- Packet buffer (66 bytes)
  type byte_array is array (0 to 65) of std_logic_vector(7 downto 0);
  signal pkt : byte_array := (
  x"01", x"42", -- length = 66 bytes
  x"de", x"ad", x"be", x"ef", x"00", x"00", -- src = deadbeef0000
  x"be", x"ef", x"de", x"ad", x"11", x"11", -- dst = beefdead1111
  x"08", x"00", -- Ethertype = IPv4
  -- fill remainder with incrementing values
  x"01", x"02", x"03", x"04", x"05", x"06", x"07", x"08",
  x"09", x"0A", x"0B", x"0C", x"0D", x"0E", x"0F", x"10",
  x"11", x"12", x"13", x"14", x"15", x"16", x"17", x"18",
  x"19", x"1A", x"1B", x"1C", x"1D", x"1E", x"1F", x"20",
  x"21", x"22", x"23", x"24", x"25", x"26", x"27", x"28",
  x"29", x"2A", x"2B", x"2C", x"2D", x"2E", x"AA", x"BB",
  x"CC", x"DD"
  );

begin

  -- DUT instance
  uut : entity work.tx_fsm_axi
    port map
    (
      clk          => clk,
      resetn       => resetn,
      packet_ready => packet_ready,
      packet_valid => packet_valid,
      wr_en        => wr_en,
      tlast        => tlast,
      tready       => tready,
      tvalid       => tvalid,
      addr         => addr
      -- tdata is driven only in TB, not in DUT (if DUT has no tdata port)
    );

  -- Clock process
  clk_process : process
  begin
    while true loop
      clk <= '1';
      wait for CLK_PERIOD/2;
      clk <= '0';
      wait for CLK_PERIOD/2;
    end loop;
  end process;

  -- Stimulus process
  stim_proc : process
  begin
    -- Reset
    resetn <= '0';
    wait for 5 * CLK_PERIOD;
    resetn <= '1';
    wait for 5 * CLK_PERIOD;

    -- Assert packet_ready
    packet_ready <= '1';
    wait for 5 * CLK_PERIOD;

    -- Send packet over AXI-S
    for i in 0 to pkt'high loop
      tvalid <= '1';
      tdata  <= pkt(i);
      if i = pkt'high then
        tlast <= '1';
      else
        tlast <= '0';
      end if;
      wait for 10 ns;
    end loop;

    tvalid <= '0';
    tlast  <= '0';
    tdata  <= (others => '0');

    -- After packet_valid is high, pull packet_ready low one cycle later
    wait until packet_valid = '1';
    wait until rising_edge(clk);
    packet_ready <= '0';

    wait for 20 * CLK_PERIOD;
    assert false report "Simulation finished" severity failure;
  end process;

end architecture;
