library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use ieee.math_real.all;

--! Parallel-In, Serial Output Shift Register with configurable delay for bit output.
--! Byte valid to first bit latency is 2 CLKs. Bit to Bit latency is BIT_DELAY CLKs.
--! If sending multiple bytes in close contact, the next byte may be sent anytime
--! after byte_ready goes high and 2 CLKs before the first bit out (otherwise
--! a gap in output may be observed).
entity sr_piso is
  generic (
    WIDTH     : positive := 8; --! Width of input byte
    BIT_DELAY : positive := 1 --! Number of clocks between each bit output
  );
  port (
    -- Mandatory Signals
    clk    : in std_logic; --! Input clock
    resetn : in std_logic; --! Active-low synchronous reset

    -- Byte/word input side (handshake)
    byte_in    : in std_logic_vector(WIDTH - 1 downto 0); --! Input byte data
    byte_valid : in std_logic; --! Pulse high when byte_in is valid
    byte_ready : out std_logic; --! High when this PISO can accept a new byte

    -- Serial output side
    bit_out   : out std_logic; --! Serial bit output
    bit_valid : out std_logic --! 1-clk strobe: bit_out is valid this cycle
  );
end entity sr_piso;

architecture rtl of sr_piso is
  --! Input byte register
  signal r_byte : std_logic_vector(WIDTH - 1 downto 0) := (others => '0');

  --! Constant that counts how many bits is required to represent values from 0 to WIDTH-1
  constant LEN_BIT_REM : positive := integer(ceil(log2(real(WIDTH + 1))));
  --! Remaining bit counter
  signal cnt_bit_rem : unsigned(LEN_BIT_REM - 1 downto 0) := (others => '0'); -- 3 bits for WIDTH=8

  --! Constant that counts how many bits is required to present values from 0 to BIT_DELAY
  constant LEN_BIT_DELAY : positive := integer(ceil(log2(real(BIT_DELAY))));
  --! Bit Delay Counter
  signal cnt_bit_delay : unsigned(LEN_BIT_DELAY - 1 downto 0) := (others => '0');

  --! PISO SR FSM states
  type state_t is (
    IDLE,
    TX,
    TX_BYTE_READY
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
      state         <= IDLE;
      r_byte        <= (others => '0');
      cnt_bit_rem   <= (others => '0');
      cnt_bit_delay <= (others => '0');
      bit_valid     <= '0';
      bit_out       <= '0';

    elsif rising_edge(clk) then
      state <= next_state;
      -- Set bit valid false
      bit_valid <= '0';

      -- State change: IDLE or TX_BYTE_READY TO TX
      if (state = IDLE or state = TX_BYTE_READY) and next_state = TX then
        -- Register byte
        r_byte <= byte_in;
        -- Prepare bit counter
        cnt_bit_rem <= to_unsigned(WIDTH, cnt_bit_rem'length);
      end if;

      -- State: TX or TX_BYTE_READY
      if state = TX or state = TX_BYTE_READY then
        -- Bit out time
        if cnt_bit_delay = 0 then
          -- Shift bit out
          bit_out <= r_byte(WIDTH - 1);
          r_byte  <= r_byte(WIDTH - 2 downto 0) & '0';
          -- Decrease remaining bits
          cnt_bit_rem <= cnt_bit_rem - 1;
          -- Set bit valid true if not transitioning to IDLE
          if next_state /= IDLE then
            bit_valid <= '1';
          end if;
          -- Reset bit delay counter
          cnt_bit_delay <= to_unsigned(BIT_DELAY - 1, cnt_bit_delay'length);
        else
          -- Decrement the bit delay counter
          cnt_bit_delay <= cnt_bit_delay - 1;
        end if;
      end if;

      -- State change: TX_BYTE_READY to IDLE
      if state = TX_BYTE_READY and next_state = IDLE then
        cnt_bit_delay <= (others => '0');
        cnt_bit_rem   <= (others => '0');
      end if;
    end if;
  end process;

  ------------------------------------------------------------------
  -- Combinatorial Processes
  ------------------------------------------------------------------
  --! Combinatorial logic for FSM state updates
  process (state, byte_valid, cnt_bit_rem, cnt_bit_delay)
  begin
    -- Default state assignment
    next_state <= state;

    -- State case, set next state
    case state is
      when IDLE =>
        if byte_valid = '1' then
          next_state <= TX;
        end if;

      when TX =>
        -- Trigger this when the last byte is happening
        if cnt_bit_rem = 1 and cnt_bit_delay = 0 then
          next_state <= TX_BYTE_READY;
        end if;

      when TX_BYTE_READY =>
        -- Listen for a new byte
        if byte_valid = '1' then
          next_state <= TX;
        elsif cnt_bit_rem = 0 and cnt_bit_delay = 0 then
          next_state <= IDLE;
        end if;
    end case;
  end process;

  ------------------------------------------------------------------
  -- Direct State Outputs
  ------------------------------------------------------------------
  with state select
    byte_ready <=
    '1' when IDLE | TX_BYTE_READY,
    '0' when others;

end architecture rtl;
