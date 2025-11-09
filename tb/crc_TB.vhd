library IEEE;
use IEEE.std_logic_1164.all;

entity tb_crc is
end entity tb_crc;

architecture sim of tb_crc is
  signal clk    : std_logic                    := '0';
  signal rst    : std_logic                    := '0';
  signal crcIn  : std_logic                    := '0';
  signal data   : std_logic_vector(7 downto 0) := (others => '0');
  signal crcOut : std_logic_vector(31 downto 0);

  constant CLK_PERIOD : time := 10 ns;

  -- Expected values for bytes AB CD EF (in this order)
  constant EXPECTED_RAW : std_logic_vector(31 downto 0) := x"9B72C286"; -- DUT output
  constant EXPECTED_FCS : std_logic_vector(31 downto 0) := x"648D3D79"; -- With final XOR

  -- Hex conversion (VHDL-93) fucken betrayed by the VHDL standard
  function slv_to_hex(slv : std_logic_vector) return string is
    constant HEX            : string  := "0123456789ABCDEF";
    variable nibbles        : integer := (slv'length + 3) / 4;
    variable result         : string(1 to nibbles);
    variable v              : integer;
    variable idxl           : integer;
  begin
    for nib in 0 to nibbles - 1 loop
      idxl := slv'left - (nib * 4);
      v    := 0;
      for b in 0 to 3 loop
        if slv(idxl - b) = '1' then
          v := v + (2 ** (3 - b));
        end if;
      end loop;
      result(nibbles - nib) := HEX(v + 1);
    end loop;
    return result;
  end function;

begin
  -- DUT instance
  uut : entity work.crc
    port map
    (
      clk    => clk,
      rst    => rst,
      crc_en => crcIn,
      data   => data,
      crcOut => crcOut
    );

  -- Clock
  clk_process : process
  begin
    loop
      clk <= '0';
      wait for CLK_PERIOD/2;
      clk <= '1';
      wait for CLK_PERIOD/2;
    end loop;
  end process;

  -- Stimulus
  stim_proc : process
    variable raw_str  : string(1 to 8);
    variable fcs_str  : string(1 to 8);
    variable post_xor : std_logic_vector(31 downto 0);
  begin
    -- Reset
    rst <= '1';
    wait for 20 ns;
    rst <= '0';
    wait for 20 ns;

    -- First byte: AB
    data  <= x"AB";
    crcIn <= '1';
    wait for CLK_PERIOD;
    crcIn <= '0';
    wait for CLK_PERIOD;

    -- Second byte: CD
    data  <= x"CD";
    crcIn <= '1';
    wait for CLK_PERIOD;
    crcIn <= '0';
    wait for CLK_PERIOD;

    -- Third byte: EF
    data  <= x"EF";
    crcIn <= '1';
    wait for CLK_PERIOD;
    crcIn <= '0';
    wait for CLK_PERIOD;

    -- Check
    post_xor := crcOut;
    raw_str  := slv_to_hex(crcOut);

    -- Reset
    rst <= '1';
    wait for 20 ns;
    rst <= '0';
    wait for 20 ns;

    -- First byte: AB
    data  <= x"12";
    crcIn <= '1';
    wait for CLK_PERIOD;
    crcIn <= '0';
    wait for CLK_PERIOD;

    -- Second byte: CD
    data  <= x"34";
    crcIn <= '1';
    wait for CLK_PERIOD;
    crcIn <= '0';
    wait for CLK_PERIOD;

    -- Third byte: EF
    data  <= x"56";
    crcIn <= '1';
    wait for CLK_PERIOD;
    crcIn <= '0';
    wait for CLK_PERIOD;

    fcs_str := slv_to_hex(crcOut);

    report "RAW CRC  (no final XOR)  = 0x" & raw_str;
    report "FCS CRC  (with final XOR) = 0x" & fcs_str;

    if crcOut = EXPECTED_RAW then
      report "TEST PASSED: raw CRC matches 0x" & slv_to_hex(EXPECTED_RAW);
    else
      report "TEST FAILED: expected raw 0x" & slv_to_hex(EXPECTED_RAW)
        & " but got 0x" & raw_str
        severity error;
    end if;

    wait; -- end
  end process;
end architecture sim;
