library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_pt is
  port (
    -- Mandatory Signals
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Control Signals
    tx_active     : out std_logic;
    next_byte     : out std_logic;
    receive_ready : out std_logic;
    tx_req        : in std_logic;
    -- Data Signals
    addr : out std_logic_vector(10 downto 0);
    data : in std_logic_vector(7 downto 0)
  );
end tx_fsm_pt;

architecture arch of tx_fsm_pt is

begin

end architecture arch;
