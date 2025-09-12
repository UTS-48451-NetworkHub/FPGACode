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

  --! TX AXI Bus FSM states
  type state_t is (
    IDLE
  );
  --! FSM State Variables
  signal state, next_state : state_t;

begin
  ------------------------------------------------------------------
  -- Sequential Processes
  ------------------------------------------------------------------
  --! Sequential Logic Update & State Register Process
  process (clk, resetn)
  begin
    if resetn = '0' then
      state <= IDLE;

    elsif rising_edge(clk) then
      state <= next_state;

    end if;

  end process;

  ------------------------------------------------------------------
  -- Combinatorial Processes
  ------------------------------------------------------------------
  --! Combinatorial logic for FSM state updates
  process (state)
  begin
    -- Default state assignment
    next_state <= state;

    -- State case, set next state
    case state is
      when IDLE =>

    end case;
  end process;

  ------------------------------------------------------------------
  -- Direct State Outputs
  ------------------------------------------------------------------

end architecture arch;
