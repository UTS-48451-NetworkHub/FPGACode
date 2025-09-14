library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reset_ctrl is
  generic (
    DEBOUNCE_CYCLES : natural := 1_000_000  -- number of clk cycles to debounce
  );
  port (
    clk     : in  std_logic;   -- system clock
    btn_n   : in  std_logic;   -- active-low pushbutton
    resetn  : out std_logic    -- clean, active-low reset
  );
end entity;

architecture rtl of reset_ctrl is

  signal btn_sync  : std_logic_vector(1 downto 0) := (others => '1');
  signal stable    : std_logic := '1';
  signal cnt       : natural range 0 to DEBOUNCE_CYCLES := 0;
  signal resetn_r  : std_logic := '0';

begin

  resetn <= resetn_r;

  process(clk)
  begin
    if rising_edge(clk) then
      --------------------------------------------------------------------
      -- 1) Synchronize the async button to clk
      --------------------------------------------------------------------
      btn_sync <= btn_sync(0) & btn_n;

      --------------------------------------------------------------------
      -- 2) Debounce logic: require DEBOUNCE_CYCLES of stable input
      --------------------------------------------------------------------
      if btn_sync(1) = stable then
        cnt <= 0;  -- input still matches stable value
      else
        if cnt = DEBOUNCE_CYCLES then
          stable <= btn_sync(1);
          cnt    <= 0;
        else
          cnt <= cnt + 1;
        end if;
      end if;

      --------------------------------------------------------------------
      -- 3) Reset control
      --    resetn_r is low while button is pressed (stable='0').
      --    It only goes high when stable='1' AND clk is high
      --    (so reset is released synchronously on clk high).
      --------------------------------------------------------------------
      if stable = '0' then
        resetn_r <= '0';
      else
        if clk = '1' then  -- release only when clk is high
          resetn_r <= '1';
        end if;
      end if;
    end if;
  end process;

end architecture;
