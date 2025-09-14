library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reset_ctrl is
  generic (
    DEBOUNCE_CYCLES : natural := 1_000_000
  );
  port (
    clk     : in  std_logic;
    btn_n   : in  std_logic;   -- active-low pushbutton
    resetn  : out std_logic    -- clean, active-low reset
  );
end entity;

architecture rtl of reset_ctrl is

  signal btn_sync  : std_logic_vector(1 downto 0) := (others => '1');
  signal stable    : std_logic := '1';
  signal cnt       : natural range 0 to DEBOUNCE_CYCLES := 0;
  signal reset_ff  : std_logic_vector(1 downto 0) := (others => '0');

begin

  resetn <= reset_ff(1);

  process(clk)
  begin
    if rising_edge(clk) then
      --------------------------------------------------------------------
      -- Synchronize pushbutton to clk
      --------------------------------------------------------------------
      btn_sync <= btn_sync(0) & btn_n;

      --------------------------------------------------------------------
      -- Debounce
      --------------------------------------------------------------------
      if btn_sync(1) = stable then
        cnt <= 0;
      else
        if cnt = DEBOUNCE_CYCLES then
          stable <= btn_sync(1);
          cnt    <= 0;
        else
          cnt <= cnt + 1;
        end if;
      end if;

      --------------------------------------------------------------------
      -- Reset release synchronizer
      --  * Goes low immediately when stable='0'
      --  * Goes high only after two rising edges once stable='1'
      --------------------------------------------------------------------
      if stable = '0' then
        reset_ff <= (others => '0');
      else
        reset_ff <= reset_ff(0) & '1';
      end if;
    end if;
  end process;

end architecture;
