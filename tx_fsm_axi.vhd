library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_axi is
  port (
    -- Mandatory Signals
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Control Signals
    packet_ready : in std_logic;
    packet_valid : out std_logic;
    wr_en        : out std_logic;
    tlast        : in std_logic;
    tkeep        : in std_logic;
    tready       : out std_logic;
    tvalid       : in std_logic;
    -- Data Signals
    addr : out std_logic_vector(10 downto 0)
  );
end tx_fsm_axi;

architecture arch of tx_fsm_axi is

begin

end architecture arch;
