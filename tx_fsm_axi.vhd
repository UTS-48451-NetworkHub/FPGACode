library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tx_fsm_axi is
  port (
    -- Mandatory Signals
    clk    : in std_logic; --! 100 MHz Clock
    resetn : in std_logic; --! Active low reset
    -- Control Signals
    packet_ready : in std_logic; --! PT is not busy, ready to receive!
    packet_valid : out std_logic; --! RAM contains valid packet and is ready to transmit
    wr_en        : out std_logic; --! RAM Write Enable
    tlast        : in std_logic; --! AXI4-S End of packet signal
    -- Default: High
    tready : out std_logic; --! AXI4-S Ready signal
    -- The receiver is permitted to wait for tvalid before asserts tready or assert/deassert at any time.
    tvalid : in std_logic; --! AXI4-S Valid signal
    -- Data Signals
    addr : out std_logic_vector(10 downto 0) --! RAM Data Address
  );
end tx_fsm_axi;

-- Three types of handshakes:
-- Simultaneous Tvalid/Tready
-- - Transfer takes place in the same cycle
-- Tready before Tvalid
-- - Transfer occurs once Tvalid is high
-- Tvalid before Tready
-- - Transfer occurs once Tready is high
-- Tlast Usage:
-- - End Packet Transmission
-- - In this circumstance, tlast should be asserted as tvalid goes low.

architecture arch of tx_fsm_axi is

  --! TX AXI Bus FSM states
  type state_t is (
    IDLE, --! AXI Bus receiver is idle as TX is busy
    READY, --! AXI Bus receiver is ready to receive
    RECEIVING, --! AXI Bus receiver is receiving actively
    LAST --! AXI Bus receiver has received the tlast signal
  );
  --! FSM State Variables
  signal state, next_state : state_t;

  --! Address Counter
  signal cnt_addr : unsigned(10 downto 0) := (others => '0');

begin
  ------------------------------------------------------------------
  -- Sequential Processes
  ------------------------------------------------------------------
  --! Sequential Logic Update & State Register Process
  p_seq : process (clk, resetn)
  begin
    if resetn = '0' then
      state        <= IDLE;
      packet_valid <= '0';
      cnt_addr <= (others => '0');

    elsif rising_edge(clk) then
      -- Transition state
      state <= next_state;

      -- Transaction is active
      if state = RECEIVING or state = LAST then
        -- Handle the address counter
        if cnt_addr = to_unsigned(0, cnt_addr'length) then
          cnt_addr <= to_unsigned(1, cnt_addr'length);
        elsif cnt_addr = to_unsigned(1, cnt_addr'length) then
          cnt_addr <= to_unsigned(10, cnt_addr'length);
        else
          cnt_addr <= cnt_addr + 1;
        end if;
      end if;

      -- Handle packet valid
      if state = RECEIVING and next_state = LAST then
        packet_valid <= '1';
      elsif state = LAST and next_state = IDLE then
        packet_valid <= '0';
        cnt_addr <= (others => '0');
      end if;
    end if;
  end process;

  ------------------------------------------------------------------
  -- Combinatorial Processes
  ------------------------------------------------------------------
  --! Combinatorial logic for FSM state updates
  p_cmb : process (state, packet_ready, tlast, tvalid)
  begin
    -- Default state assignment
    next_state <= state;

    -- State case, set next state
    case state is
      when IDLE =>
        if packet_ready = '1' then
          next_state <= READY;
        end if;

      when READY =>
        if tvalid = '1' then
          next_state <= RECEIVING;
        end if;

      when RECEIVING =>
        if tlast = '1' then
          next_state <= LAST;
        end if;

      when LAST =>
        if tvalid = '0' then
          next_state <= IDLE;
        end if;
    end case;
  end process;

  ------------------------------------------------------------------
  -- Direct State Outputs
  ------------------------------------------------------------------
  addr <= std_logic_vector(cnt_addr);

  with state select
    tready <=
    '1' when READY | RECEIVING | LAST,
    '0' when others;

  with state select
    wr_en <=
    '1' when RECEIVING | LAST,
    '0' when others;

end architecture arch;
