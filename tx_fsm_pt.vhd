library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_pt is
  port (
    -- Mandatory Signals
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Control Signals
    tx_active    : out std_logic;
    byte_valid   : out std_logic;
    packet_ready : out std_logic;
    packet_valid : in std_logic;
    reg_clk      : out std_logic;
    -- Data Signals
    addr : out std_logic_vector(10 downto 0);
    data : in std_logic_vector(7 downto 0)
  );
end tx_fsm_pt;

architecture arch of tx_fsm_pt is

  --! Packet Transmission FSM states
  type state_t is (
    IDLE,
    LOAD_LENGTH_UPPER,
    LOAD_LENGTH_LOWER,
    TX_START,
    SEND_PREAMBLE,
    SEND_FRAME,
    IFG
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

      when LOAD_LENGTH_UPPER =>

      when LOAD_LENGTH_LOWER =>

      when TX_START =>

      when SEND_PREAMBLE =>

      when SEND_FRAME =>

      when IFG =>

    end case;
  end process;

  ------------------------------------------------------------------
  -- Direct State Outputs
  ------------------------------------------------------------------
  receive_ready <=

    with state select
    addr <=

  end architecture arch;
