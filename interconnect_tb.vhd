library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interconnect_tb is
end interconnect_tb;

architecture sim of interconnect_tb is

  -- DUT signals
  signal clk    : std_logic := '0';
  signal resetn : std_logic := '0';

  -- Port A
  signal PA_RX_tdata  : std_logic_vector(7 downto 0) := (others => '0');
  signal PA_RX_tvalid : std_logic                    := '0';
  signal PA_RX_tlast  : std_logic                    := '0';

  signal PA_TX_tdata  : std_logic_vector(7 downto 0);
  signal PA_TX_tvalid : std_logic;
  signal PA_TX_tlast  : std_logic;

  -- Port B
  signal PB_RX_tdata  : std_logic_vector(7 downto 0) := (others => '0');
  signal PB_RX_tvalid : std_logic                    := '0';
  signal PB_RX_tlast  : std_logic                    := '0';

  signal PB_TX_tdata  : std_logic_vector(7 downto 0);
  signal PB_TX_tvalid : std_logic;
  signal PB_TX_tlast  : std_logic;

  -- Port C
  signal PC_RX_tdata  : std_logic_vector(7 downto 0) := (others => '0');
  signal PC_RX_tvalid : std_logic                    := '0';
  signal PC_RX_tlast  : std_logic                    := '0';

  signal PC_TX_tdata  : std_logic_vector(7 downto 0);
  signal PC_TX_tvalid : std_logic;
  signal PC_TX_tlast  : std_logic;

  -- Port D
  signal PD_RX_tdata  : std_logic_vector(7 downto 0) := (others => '0');
  signal PD_RX_tvalid : std_logic                    := '0';
  signal PD_RX_tlast  : std_logic                    := '0';

  signal PD_TX_tdata  : std_logic_vector(7 downto 0);
  signal PD_TX_tvalid : std_logic;
  signal PD_TX_tlast  : std_logic;

  -- Port E
  signal PE_RX_tdata  : std_logic_vector(7 downto 0) := (others => '0');
  signal PE_RX_tvalid : std_logic                    := '0';
  signal PE_RX_tlast  : std_logic                    := '0';

  signal PE_TX_tdata  : std_logic_vector(7 downto 0);
  signal PE_TX_tvalid : std_logic;
  signal PE_TX_tlast  : std_logic;

begin

  --------------------------------------------------------------------
  -- DUT
  --------------------------------------------------------------------
  uut : entity work.interconnect
    port map
    (
      clk    => clk,
      resetn => resetn,

      -- Port A
      PA_RX_tdata  => PA_RX_tdata,
      PA_RX_tvalid => PA_RX_tvalid,
      PA_RX_tlast  => PA_RX_tlast,
      PA_TX_tdata  => PA_TX_tdata,
      PA_TX_tvalid => PA_TX_tvalid,
      PA_TX_tlast  => PA_TX_tlast,

      -- Port B
      PB_RX_tdata  => PB_RX_tdata,
      PB_RX_tvalid => PB_RX_tvalid,
      PB_RX_tlast  => PB_RX_tlast,
      PB_TX_tdata  => PB_TX_tdata,
      PB_TX_tvalid => PB_TX_tvalid,
      PB_TX_tlast  => PB_TX_tlast,

      -- Port C
      PC_RX_tdata  => PC_RX_tdata,
      Pc_RX_tvalid => PC_RX_tvalid,
      PC_RX_tlast  => PC_RX_tlast,
      PC_TX_tdata  => PC_TX_tdata,
      PC_TX_tvalid => PC_TX_tvalid,
      PC_TX_tlast  => PC_TX_tlast,

      -- Port D
      PD_RX_tdata  => PD_RX_tdata,
      PD_RX_tvalid => PD_RX_tvalid,
      PD_RX_tlast  => PD_RX_tlast,
      PD_TX_tdata  => PD_TX_tdata,
      PD_TX_tvalid => PD_TX_tvalid,
      PD_TX_tlast  => PD_TX_tlast,

      -- Port E
      PE_RX_tdata  => PE_RX_tdata,
      PE_RX_tvalid => PE_RX_tvalid,
      PE_RX_tlast  => PE_RX_tlast,
      PE_TX_tdata  => PE_TX_tdata,
      PE_TX_tvalid => PE_TX_tvalid,
      PE_TX_tlast  => PE_TX_tlast
    );

  --------------------------------------------------------------------
  -- Clock generation (100 MHz)
  --------------------------------------------------------------------
  clk <= not clk after 5 ns;

  --------------------------------------------------------------------
  -- Stimulus process
  --------------------------------------------------------------------
  stimulus : process
  begin
    -- Reset
    resetn <= '0';
    wait for 100 ns;
    resetn <= '1';

    -------------------------------------------------
    -- Test case 1: Send a packet on Port A RX
    -------------------------------------------------
    wait for 20 ns;

    -- Word 1
    PA_RX_tdata  <= x"11";
    PA_RX_tvalid <= '1';
    PA_RX_tlast  <= '0';
    wait for 10 ns;

    -- Word 2
    PA_RX_tdata  <= x"22";
    PA_RX_tvalid <= '1';
    PA_RX_tlast  <= '0';
    wait for 10 ns;

    -- Word 3 (last)
    PA_RX_tdata  <= x"33";
    PA_RX_tvalid <= '1';
    PA_RX_tlast  <= '1';
    wait for 10 ns;

    -- Deassert
    PA_RX_tvalid <= '0';
    PA_RX_tlast  <= '0';

    -------------------------------------------------
    -- Hold simulation for checking
    -------------------------------------------------
    wait for 200 ns;

    assert false report "Simulation Finished" severity failure;
  end process;

  --------------------------------------------------------------------
  -- Simple monitors
  --------------------------------------------------------------------
  monitor : process (clk)
  begin
    if rising_edge(clk) then

      -- Port B
      if PB_TX_tvalid = '1' then
        if PB_TX_tlast = '1' then
          report "PB got data: " & integer'image(to_integer(unsigned(PB_TX_tdata))) & " (last)";
        else
          report "PB got data: " & integer'image(to_integer(unsigned(PB_TX_tdata)));
        end if;
      end if;

      -- Port C
      if PC_TX_tvalid = '1' then
        if PC_TX_tlast = '1' then
          report "PC got data: " & integer'image(to_integer(unsigned(PC_TX_tdata))) & " (last)";
        else
          report "PC got data: " & integer'image(to_integer(unsigned(PC_TX_tdata)));
        end if;
      end if;

      -- Port D
      if PD_TX_tvalid = '1' then
        if PD_TX_tlast = '1' then
          report "PD got data: " & integer'image(to_integer(unsigned(PD_TX_tdata))) & " (last)";
        else
          report "PD got data: " & integer'image(to_integer(unsigned(PD_TX_tdata)));
        end if;
      end if;

      -- Port E
      if PE_TX_tvalid = '1' then
        if PE_TX_tlast = '1' then
          report "PE got data: " & integer'image(to_integer(unsigned(PE_TX_tdata))) & " (last)";
        else
          report "PE got data: " & integer'image(to_integer(unsigned(PE_TX_tdata)));
        end if;
      end if;

      -- Sanity check: source port should not receive its own packet
      if PA_TX_tvalid = '1' then
        report "ERROR: PA should not receive its own packet!" severity error;
      end if;

    end if;
  end process;

end sim;
