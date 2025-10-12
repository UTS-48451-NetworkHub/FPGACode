library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_tx_ram_driver is
  port (
    clk      : in  std_logic;
    resetn   : in  std_logic;
    enable   : in  std_logic;

    -- AXI-S interface to eth_tx
    tvalid   : out std_logic := '0';
    tready   : in  std_logic;
    tlast    : out std_logic := '0';
    tdata    : out std_logic_vector(7 downto 0) := (others => '0')
  );
end entity;

architecture rtl of eth_tx_ram_driver is

  ------------------------------------------------------------------------
  -- Constants
  ------------------------------------------------------------------------
  constant RAM_DEPTH  : natural := 1024;
  constant CLK_FREQ   : natural := 100_000_000;
  constant TX_PERIOD  : natural := CLK_FREQ; -- 1 second period

  ------------------------------------------------------------------------
  -- Signals
  ------------------------------------------------------------------------
  signal timer_count     : natural range 0 to TX_PERIOD - 1 := 0;
  signal tx_trigger      : std_logic := '0';
  signal enable_prev     : std_logic := '0';
  signal enable_rising   : std_logic := '0';

  signal tx_active       : std_logic := '0';
  signal tx_done         : std_logic := '0';

  signal ram_address     : std_logic_vector(9 downto 0);
  signal ram_q           : std_logic_vector(7 downto 0);
  signal ram_wren        : std_logic := '0';

  -- Frame tracking
  signal packet_len      : natural range 0 to RAM_DEPTH := 0;
  signal bytes_sent      : natural range 0 to RAM_DEPTH := 0;
  signal addr_ptr        : natural range 0 to RAM_DEPTH - 1 := 0;
  signal next_packet_ptr : natural range 0 to RAM_DEPTH - 1 := 0;
  signal length_hi       : std_logic_vector(7 downto 0);
  signal length_lo       : std_logic_vector(7 downto 0);
  signal read_len_phase  : integer range 0 to 2 := 0;  -- 0=idle, 1=hi, 2=lo

begin

  ------------------------------------------------------------------------
  -- Enable edge detection and 1-second timer
  ------------------------------------------------------------------------
  timer_process : process(clk)
  begin
    if rising_edge(clk) then
      if resetn = '0' then
        timer_count   <= 0;
        tx_trigger    <= '0';
        enable_prev   <= '0';
        enable_rising <= '0';
      else
        enable_prev   <= enable;
        enable_rising <= enable and not enable_prev;

        if enable = '0' then
          timer_count <= 0;
          tx_trigger  <= '0';
        else
          if timer_count = TX_PERIOD - 1 then
            timer_count <= 0;
            tx_trigger  <= '1';
          else
            timer_count <= timer_count + 1;
            tx_trigger  <= '0';
          end if;
        end if;
      end if;
    end if;
  end process;

  ------------------------------------------------------------------------
  -- Transmission control
  ------------------------------------------------------------------------
  tx_control_process : process(clk)
  begin
    if rising_edge(clk) then
      if resetn = '0' or enable = '0' then
        tx_active       <= '0';
        tx_done         <= '0';
        bytes_sent      <= 0;
        packet_len      <= 0;
        addr_ptr        <= 0;
        next_packet_ptr <= 0;
        read_len_phase  <= 0;
      else
        -- Start transmission when triggered
        if (enable_rising = '1' or tx_trigger = '1') and tx_active = '0' then
          tx_active <= '1';
          bytes_sent <= 0;
          read_len_phase <= 1;
          addr_ptr <= next_packet_ptr;
        end if;

        if tx_active = '1' then
          case read_len_phase is

            when 1 =>  -- Read high byte of length
              length_hi <= ram_q;
              addr_ptr <= addr_ptr + 1;
              read_len_phase <= 2;

            when 2 =>  -- Read low byte of length
              length_lo <= ram_q;
              addr_ptr <= addr_ptr + 1;
              packet_len <= to_integer(unsigned(length_hi & ram_q));
              bytes_sent <= 0;
              read_len_phase <= 0;

            when others =>
              -- Stream out frame data
              if tready = '1' then
                if bytes_sent < packet_len then
                  bytes_sent <= bytes_sent + 1;
                  addr_ptr <= addr_ptr + 1;
                else
                  -- Done with packet
                  tx_done <= '1';
                  tx_active <= '0';
                  next_packet_ptr <= addr_ptr; -- points to next length field
                end if;
              end if;
          end case;
        end if;

        -- Wraparound
        if next_packet_ptr >= RAM_DEPTH - 2 then
          next_packet_ptr <= 0;
        end if;

        -- Clear done flag
        if tx_done = '1' then
          tx_done <= '0';
        end if;
      end if;
    end if;
  end process;

  ------------------------------------------------------------------------
  -- AXI-S Outputs
  ------------------------------------------------------------------------
  tvalid <= '1' when (tx_active = '1' and read_len_phase = 0 and bytes_sent < packet_len) else '0';
  tlast  <= '1' when (bytes_sent = packet_len - 1 and tready = '1' and tx_active = '1') else '0';
  tdata  <= ram_q when (tx_active = '1' and read_len_phase = 0) else (others => '0');

  ------------------------------------------------------------------------
  -- RAM interface
  ------------------------------------------------------------------------
  ram_address <= std_logic_vector(to_unsigned(addr_ptr, ram_address'length));

  ram_inst : entity work.ram_tx_driver
    port map (
      address => ram_address,
      clock   => clk,
      data    => (others => '0'),
      wren    => ram_wren,
      q       => ram_q
    );

end architecture;
