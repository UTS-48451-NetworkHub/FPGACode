library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! The TX PHY is responsible for encoding transmitted data into manchester encoding and
--! generating NLP pulses when the link has been active for 1.6ms. It contains a FSM that
--! is used to control the internal logic. Input to output latency is 1 CLK.
entity tx_phy is
  port (
    -- Mandatory Signals
    clk    : in std_logic; --! 100 MHz Clock
    resetn : in std_logic; --! Low active reset
    -- Control Signals
    tx_active : in std_logic; --! Packet transmission is active
    bit_valid : in std_logic; --! Input bit is valid for this clock cycle
    driver_en : out std_logic; --! Output driver is enabled
    -- Data Signals             
    bit_in : in std_logic; --! Input bit to encode
    tx_out : out std_logic --! Output Manchester / NLP data
  );
end entity tx_phy;

architecture arch of tx_phy is

  --! PHY FSM states
  type state_t is (
    IDLE, --! Nothing is happening here...
    TX, --! Manchester encoding (TX Data) in progress
    NLP, --! Line is idle and NLP is being sent out
    TP_IDL_WAIT, --! Waiting for end of current bit time before going to TP_IDL
    TP_IDL --! Sending End of Packet Signal
  );
  --! FSM State Variables
  signal state, next_state : state_t;

  -- Manchester Encoder
  --! Internal manchester encoder output
  signal r_mcn_out : std_logic := '0';
  --! Internal register for bit_in
  signal r_mcn_bit_in : std_logic := '0';
  --! Phase used to generate manchester encoding 
  signal r_mcn_phase : std_logic := '1';

  -- NLP
  --! Internal NLP generator output
  signal r_nlp_out : std_logic := '0';
  --! Idle inactivity counter (for NLP)
  signal r_inactivity_counter : unsigned(20 downto 0) := (others => '0');
  --! 802.3i specification NLP timeout
  constant NLP_TIMEOUT : unsigned(20 downto 0) := to_unsigned(1_600_000, 21);

  --! Clock Enable Counter for NLP and TP_IDL
  signal r_clk_counter : unsigned(4 downto 0) := (others => '0');

  -- TP IDL
  signal r_tp_idl_out : std_logic := '0';

begin
  ------------------------------------------------------------------
  -- Sequential Processes
  ------------------------------------------------------------------
  --! Sequential Logic Update & State Register Process
  p_seq : process (clk, resetn)
  begin
    if resetn = '0' then
      state                <= IDLE;
      r_inactivity_counter <= (others => '0');
      r_clk_counter        <= (others => '0');
      r_mcn_phase          <= '1';
      r_mcn_bit_in         <= '0';
      r_nlp_out            <= '0';
      r_tp_idl_out         <= '0';

    elsif rising_edge(clk) then
      state <= next_state;

      -- STATE: ANY
      -- Clock Counter Increment
      if r_clk_counter = to_unsigned(31, r_clk_counter'length) then
        r_clk_counter <= (others => '0');
      else
        r_clk_counter <= r_clk_counter + 1;
      end if;

      -- STATE: IDLE
      -- Keep count of inactivity in idle state
      if state = IDLE then
        r_inactivity_counter <= r_inactivity_counter + 1;
      else
        r_inactivity_counter <= (others => '0');
      end if;

      -- STATE CHANGE: IDLE TO TX
      -- Ensure phase counter is set to 0 on state change
      if state = IDLE and next_state = TX then
        r_mcn_phase   <= '1';
        r_clk_counter <= (others => '0');
      end if;

      -- STATE: TX
      -- Switch phase if in TX state
      if state = TX and r_clk_counter = to_unsigned(4, r_clk_counter'length) then
        r_clk_counter <= (others => '0');
        r_mcn_phase   <= not r_mcn_phase;
      end if;

      -- STATE CHANGE: TX to TP_IDL
      if state = TX and next_state = TP_IDL then
        r_clk_counter <= (others => '0');
        r_tp_idl_out  <= '1';
      end if;

      -- STATE CHANGE: TP_IDL_WAIT to TP_IDL
      if state = TP_IDL_WAIT and next_state = TP_IDL then
        r_clk_counter <= (others => '0');
        r_tp_idl_out  <= '1';
      end if;

      -- STATE CHANGE: TP_IDL to IDLE
      if state = TP_IDL and next_state = IDLE then
        r_tp_idl_out <= '0';
      end if;

      -- STATE: ANY
      -- Lock in new bit if present and in TX state
      if bit_valid = '1' then
        r_mcn_bit_in <= bit_in;
      end if;

      -- STATE CHANGE: IDLE TO NLP
      if state = IDLE and next_state = NLP then
        r_clk_counter <= (others => '0');
        r_nlp_out     <= '1';
      end if;
      -- STATE CHANGE: NLP to IDLE
      -- End pulse
      if state = NLP and next_state = IDLE then
        r_nlp_out <= '0';
      end if;
    end if;
  end process;

  ------------------------------------------------------------------
  -- Combinatorial Processes
  ------------------------------------------------------------------
  --! Combinatorial logic for FSM state updates
  p_cmb : process (state, tx_active, r_clk_counter, r_inactivity_counter, r_mcn_out)
  begin
    -- Default state assignment
    next_state <= state;

    case state is
      when IDLE =>
        -- If a TX request comes in then go there
        if tx_active = '1' then
          next_state <= TX;
          -- Otherwise if it's time for a NLP go there
        elsif r_inactivity_counter = NLP_TIMEOUT then
          next_state <= NLP;
        end if;

      when TX =>
        -- end of transmission
        if tx_active = '0' and r_mcn_out = '1' then
          next_state <= TP_IDL_WAIT;
        elsif tx_active = '0' and r_mcn_out = '0' then
          next_state <= TP_IDL;
        end if;

      when TP_IDL_WAIT =>
        if r_clk_counter = to_unsigned(4, r_clk_counter'length) then
          next_state <= TP_IDL;
        end if;

      when TP_IDL =>
        -- End the pulse
        if r_clk_counter = to_unsigned(24, r_clk_counter'length) then
          next_state <= IDLE;
        end if;

      when NLP =>
        -- End pulse
        if r_clk_counter = to_unsigned(9, r_clk_counter'length) then
          next_state <= IDLE;
        end if;
    end case;
  end process;

  ------------------------------------------------------------------
  -- Direct State Outputs
  ------------------------------------------------------------------
  with state select
    driver_en <=
    '1' when TX | NLP,
    '0' when others;

  with state select
    tx_out <=
    r_mcn_out when TX,
    r_nlp_out when NLP,
    r_tp_idl_out when TP_IDL,
    '0' when others;

  r_mcn_out <= (r_mcn_bit_in xor r_mcn_phase);

end architecture arch;
