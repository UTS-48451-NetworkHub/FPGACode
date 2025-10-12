library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity reset_ctrl is
  port(
    clk    : in  std_logic;
    btn_n  : in  std_logic;             -- active-low pushbutton
    resetn : out std_logic              -- clean, active-low reset
  );
end entity;

architecture rtl of reset_ctrl is

  signal btn_sync1 : std_logic             := '1'; -- First FF sync
  signal btn_sync2 : std_logic             := '1'; -- Second FF Sync
  signal btn       : std_logic             := '1'; -- debounced level
  signal last_btn  : std_logic             := '1';
  signal cnt       : unsigned(15 downto 0) := (others => '0');
  signal r_resetn  : std_logic             := '0';

begin

  resetn <= r_resetn;

  process(clk)
  begin
    if rising_edge(clk) then
      --------------------------------------------------------------------
      -- Synchronize pushbutton to clk
      --------------------------------------------------------------------
      btn_sync1 <= btn_n;
      btn_sync2 <= btn_sync1;

      --------------------------------------------------------------------
      -- Debounce: count stable samples
      --------------------------------------------------------------------
      if btn_sync2 = btn then
        if cnt /= (cnt'range => '1') then
          cnt <= cnt + 1;
        end if;
      else
        cnt <= (others => '0');
      end if;

      if cnt = (cnt'range => '1') then
        btn <= btn_sync2;
      end if;

      --------------------------------------------------------------------
      -- Detect falling edge of debounced button (press)
      --------------------------------------------------------------------
      if last_btn = '1' and btn = '0' then
        r_resetn <= not r_resetn;
      end if;
      last_btn <= btn;
    end if;
  end process;

end architecture;
