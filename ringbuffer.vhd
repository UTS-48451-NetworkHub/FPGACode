--! 9-bit Dual-Port RAM (up to 2048 x 9 using two 1K x 9 banks)
--! Synchronous write and synchronous read (1-cycle latency)
--! Lower 8 bits = data, bit[8] = optional flag (e.g., TLAST)
--! For ADDR_WIDTH = 11, bit[10] selects bank; for smaller widths only bank 0 is used
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! Entity: ram_2048x9_cascade
--! Generic dual-port memory: Port A write, Port B read
--! Read data is registered and valid one cycle after b_en
entity ram_2048x9_cascade is
  generic (
    --! Effective address width (1..11); 10->1024, 11->2048
    ADDR_WIDTH : natural := 11
  );
  port (
    --! Common clock for read and write ports
    clk     : in  std_logic;

    --! Port A (write)
    --! Write port enable (qualifies write)
    a_en    : in  std_logic;
    --! Write strobe; with a_en='1' writes a_din
    a_we    : in  std_logic;
    --! Write address; bit[10] (when present) selects bank
    a_addr  : in  unsigned(ADDR_WIDTH-1 downto 0);
    --! 9-bit payload (8 data + optional flag at bit[8])
    a_din   : in  std_logic_vector(8 downto 0);

    --! Port B (read)
    --! Read port enable; issues synchronous read
    b_en    : in  std_logic;
    --! Read address; same banking scheme as Port A
    b_addr  : in  unsigned(ADDR_WIDTH-1 downto 0);
    --! Registered read data; valid one clock after b_en
    b_dout  : out std_logic_vector(8 downto 0)
  );
end entity;

architecture rtl of ram_2048x9_cascade is
  --! Two physical banks of 1K x 9
  type ram_t is array (0 to 1023) of std_logic_vector(8 downto 0);

  --! Lower bank (MSB=0) and upper bank (MSB=1)
  signal ram0, ram1 : ram_t := (others => (others => '0'));

  --! Bank selects derived from address MSB when available
  signal sel_a, sel_b : std_logic;

  --! Registered read data for synchronous read behavior
  signal b_dout_reg   : std_logic_vector(8 downto 0) := (others => '0');
begin
  --! Bank select generation for ADDR_WIDTH >= 11
  gen_hi : if ADDR_WIDTH >= 11 generate
    sel_a <= std_logic(a_addr(10));  --! write bank select
    sel_b <= std_logic(b_addr(10));  --! read bank select
  end generate;

  --! If width < 11, always use bank 0
  gen_lo : if ADDR_WIDTH < 11 generate
    sel_a <= '0';
    sel_b <= '0';
  end generate;

  --! Synchronous write + read
  process(clk)
    variable idx_a, idx_b : integer;  --! 10-bit in-bank index
  begin
    if rising_edge(clk) then
      --! WRITE (Port A)
      if a_en = '1' and a_we = '1' then
        idx_a := to_integer(resize(a_addr, 10)) mod 1024;
        if sel_a = '0' then
          ram0(idx_a) <= a_din;
        else
          ram1(idx_a) <= a_din;
        end if;
      end if;

      --! READ (Port B)
      if b_en = '1' then
        idx_b := to_integer(resize(b_addr, 10)) mod 1024;
        if sel_b = '0' then
          b_dout_reg <= ram0(idx_b);
        else
          b_dout_reg <= ram1(idx_b);
        end if;
      end if;
    end if;
  end process;

  --! Registered output
  b_dout <= b_dout_reg;
end architecture;
--! Ring Buffer with Dual-Port Block RAM (AXI-Stream in/out)
--! Captures one AXI-Stream packet into RAM and replays it
--! Holds exactly one full packet; new input is dropped until read completes
--! Data width is 8 bits (one byte per RAM word), bit[8] stores TLAST
--! Read path accounts for 1-cycle RAM read latency
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! Entity: ringbuffer
--! Single-packet capture and playback using ram_2048x9_cascade
--! rst_n is active-low synchronous reset
entity ringbuffer is
  generic(
    --! Width of AXIS data (must be 8)
    DATA_WIDTH  : positive := 8;
    --! Maximum number of bytes in one packet
    DEPTH_BYTES : positive := 2048
  );
  port(
    --! Clock and reset
    clk           : in  std_logic;   --! clock domain for all logic
    rst_n         : in  std_logic;   --! active-low synchronous reset

    --! AXI-Stream input (slave)
    s_axis_tdata  : in  std_logic_vector(DATA_WIDTH - 1 downto 0); --! input byte
    s_axis_tvalid : in  std_logic;                                 --! valid strobe
    s_axis_tlast  : in  std_logic;                                 --! end-of-packet
    s_axis_tready : out std_logic;                                 --! always '1'

    --! AXI-Stream output (master)
    m_axis_tdata  : out std_logic_vector(DATA_WIDTH - 1 downto 0); --! output byte
    m_axis_tvalid : out std_logic;                                 --! valid strobe
    m_axis_tlast  : out std_logic;                                 --! end-of-packet
    m_axis_tready : in  std_logic                                  --! consumer ready
  );
end entity;

architecture rtl of ringbuffer is
  --! One byte per entry; equals DEPTH_BYTES
  constant DEPTH_WORDS : positive := DEPTH_BYTES;
  --! Address width to cover depth (11 -> 2048 entries)
  constant ADDR_WIDTH  : positive := 11;

  --! Dual-port RAM signals (A=write, B=read)
  signal ram_a_en   : std_logic := '0';                                   --! Port A enable
  signal ram_a_we   : std_logic := '0';                                   --! Port A write strobe
  signal ram_a_addr : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0'); --! Port A address
  signal ram_a_din  : std_logic_vector(8 downto 0) := (others => '0');    --! {TLAST, DATA}

  signal ram_b_en   : std_logic := '0';                                   --! Port B enable
  signal ram_b_addr : unsigned(ADDR_WIDTH-1 downto 0) := (others => '0'); --! Port B address
  signal ram_b_dout : std_logic_vector(8 downto 0);                       --! Port B data out

  --! Capture/bookkeeping state
  signal cap_len       : integer range 0 to DEPTH_WORDS := 0; --! bytes captured in current packet
  signal cap_overflow  : std_logic := '0';                    --! drop remainder when overflow
  signal capturing     : std_logic := '0';                    --! currently recording packet

  --! Stored packet metadata
  signal stored_len    : integer range 0 to DEPTH_WORDS := 0; --! length of stored packet
  signal buffer_valid  : std_logic := '0';                    --! one complete packet ready

  --! Output-side FSM and indices
  type out_state_t is (OUT_IDLE, OUT_STREAM);                 --! FSM states
  signal out_state     : out_state_t := OUT_IDLE;

  signal rd_index      : integer range 0 to DEPTH_WORDS := 0; --! index of current output word
  signal rd_index_next : integer range 0 to DEPTH_WORDS := 0; --! next address to request

  --! Pipeline registers aligning with RAM read latency
  signal out_valid_pipe : std_logic := '0';                   --! drives m_axis_tvalid
  signal out_last_pipe  : std_logic := '0';                   --! kept for clarity

  --! AXIS output handshake (valid && ready)
  signal handshake     : std_logic := '0';
begin
  --! AXIS wiring
  s_axis_tready <= '1';
  m_axis_tdata  <= ram_b_dout(7 downto 0);
  m_axis_tlast  <= ram_b_dout(8);
  m_axis_tvalid <= out_valid_pipe;
  handshake     <= out_valid_pipe and m_axis_tready;

  --! Parameter sanity check (simulation)
  assert DATA_WIDTH = 8
    report "ringbuffer: DATA_WIDTH must be 8 for this implementation."
    severity failure;

  --! Instantiate dual-port RAM
  u_ram : entity work.ram_2048x9_cascade
    generic map (
      ADDR_WIDTH => ADDR_WIDTH
    )
    port map (
      clk    => clk,
      a_en   => ram_a_en,
      a_we   => ram_a_we,
      a_addr => ram_a_addr,
      a_din  => ram_a_din,
      b_en   => ram_b_en,
      b_addr => ram_b_addr,
      b_dout => ram_b_dout
    );

  --! Main sequential process: reset, capture path, and output FSM
  --! Capture writes {TLAST,DATA} at consecutive addresses starting from 0
  --! Output issues reads one cycle ahead and honors backpressure
  process(clk)
  begin
    if rising_edge(clk) then
      if rst_n = '0' then
        --! Reset: clear state and deassert outputs
        capturing      <= '0';
        cap_len        <= 0;
        cap_overflow   <= '0';
        stored_len     <= 0;
        buffer_valid   <= '0';
        out_state      <= OUT_IDLE;
        rd_index       <= 0;
        rd_index_next  <= 0;
        out_valid_pipe <= '0';
        out_last_pipe  <= '0';
        ram_a_en       <= '0';
        ram_a_we       <= '0';
        ram_a_addr     <= (others => '0');
        ram_a_din      <= (others => '0');
        ram_b_en       <= '0';
        ram_b_addr     <= (others => '0');

      else
        --! Defaults: disable RAM ops unless explicitly enabled
        ram_a_en <= '0';
        ram_a_we <= '0';
        ram_b_en <= '0';

        --! INPUT: packet capture into RAM (Port A)
        if s_axis_tvalid = '1' then
          --! Start-of-packet
          if (capturing = '0') and (cap_overflow = '0') then
            capturing    <= '1';
            cap_overflow <= '0';

            if buffer_valid = '1' then
              --! Already holding a packet: drop this one
              cap_overflow <= '1';
              cap_len      <= 0;
            else
              --! Write first word at address 0
              ram_a_en   <= '1';
              ram_a_we   <= '1';
              ram_a_addr <= to_unsigned(0, ADDR_WIDTH);
              ram_a_din  <= s_axis_tlast & s_axis_tdata;
              cap_len    <= 1;

              if s_axis_tlast = '1' then
                --! Single-beat packet completes immediately
                capturing    <= '0';
                buffer_valid <= '1';
                stored_len   <= 1;
              end if;
            end if;

          elsif capturing = '1' then
            --! Middle / end of packet
            if cap_overflow = '1' then
              --! Dropping until TLAST
              if s_axis_tlast = '1' then
                capturing    <= '0';
                cap_overflow <= '0';
              end if;

            else
              --! Normal capture path
              if cap_len < DEPTH_WORDS then
                ram_a_en   <= '1';
                ram_a_we   <= '1';
                ram_a_addr <= to_unsigned(cap_len, ADDR_WIDTH);
                ram_a_din  <= s_axis_tlast & s_axis_tdata;

                if s_axis_tlast = '1' then
                  --! Packet finished successfully
                  capturing    <= '0';
                  buffer_valid <= '1';
                  stored_len   <= cap_len + 1;  --! include this beat
                else
                  cap_len <= cap_len + 1;
                end if;

              else
                --! Overflow: stop writing and drop remainder
                cap_overflow <= '1';
                if s_axis_tlast = '1' then
                  capturing    <= '0';
                  cap_overflow <= '0';
                end if;
              end if;
            end if;
          end if;
        end if;

        --! OUTPUT: FSM accounting for RAM read latency
        case out_state is
          when OUT_IDLE =>
            out_valid_pipe <= '0';
            rd_index       <= 0;

            if (buffer_valid = '1') and (stored_len > 0) then
              --! Issue first read; data arrives next cycle
              out_state  <= OUT_STREAM;
              rd_index   <= 0;
              ram_b_en   <= '1';
              ram_b_addr <= to_unsigned(0, ADDR_WIDTH);
              out_valid_pipe <= '1';

              --! Precompute next address
              if stored_len > 1 then
                rd_index_next <= 1;
              else
                rd_index_next <= 0;
              end if;
            end if;

          when OUT_STREAM =>
            --! Data present on m_axis_* this cycle (from previous read)
            if (out_valid_pipe = '1') and (m_axis_tready = '1') then
              if rd_index = stored_len - 1 then
                --! Last word consumed: buffer becomes empty
                buffer_valid   <= '0';
                out_valid_pipe <= '0';
                out_state      <= OUT_IDLE;
                rd_index       <= 0;
                rd_index_next  <= 0;
              else
                --! Consume and request next word
                rd_index   <= rd_index + 1;
                ram_b_en   <= '1';
                ram_b_addr <= to_unsigned(rd_index + 1, ADDR_WIDTH);
                out_valid_pipe <= '1';

                --! Prepare following address (bounds check)
                if rd_index + 2 < stored_len then
                  rd_index_next <= rd_index + 2;
                else
                  rd_index_next <= rd_index + 1;
                end if;
              end if;

            elsif out_valid_pipe = '1' and m_axis_tready = '0' then
              --! Backpressure: hold current data, do not advance
              out_valid_pipe <= '1';

            else
              --! Waiting for first handshake; keep valid asserted
              out_valid_pipe <= '1';
            end if;
        end case;
      end if;
    end if;
  end process;

end architecture;
