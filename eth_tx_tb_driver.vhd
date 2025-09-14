library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_tx_tb_driver is
  generic (
    STARTUP_DELAY : natural := 10 -- cycles to wait after reset deassertion
  );
  port (
    clk    : in std_logic;
    resetn : in std_logic;
    -- AXI-S interface to eth_tx
    tvalid : out std_logic;
    tready : in std_logic;
    tlast  : out std_logic;
    tdata  : out std_logic_vector(7 downto 0)
  );
end entity;

architecture rtl of eth_tx_tb_driver is

  ------------------------------------------------------------------------
  -- Ethernet + IPv4 + ICMP Echo Request example frame
  -- Preceded by 2-byte length field.
  -- (length = total Ethernet frame length, here 60 bytes)
  ------------------------------------------------------------------------
  constant frame_bytes : natural := 66; -- 2 length bytes + 60 frame bytes

  type rom_t is array (0 to frame_bytes - 1) of std_logic_vector(7 downto 0);

  -- Header is 14 bytes,
  -- Payload is minimum 46 bytes
  -- FCS is 4 bytes
  constant frame_rom : rom_t := (
  -- Length field (2 bytes) = 0x003C (64 bytes)
  x"00", x"40",
  -- Ethernet header (14 bytes)
  x"BE", x"EF", x"DE", x"AD", x"11", x"11", -- Dest MAC
  x"DE", x"AD", x"BE", x"EF", x"00", x"00", -- Src MAC
  x"08", x"00", -- Ethertype = IPv4
  -- IPv4 header (20 bytes, minimal, no options)
  x"45", x"00", x"00", x"2C", -- Version, IHL, TOS, Total length = 44
  x"00", x"01", x"00", x"00", -- ID, flags/frag
  x"40", x"01", x"00", x"00", -- TTL=64, Proto=ICMP(1), Checksum (dummy)
  x"C0", x"A8", x"01", x"64", -- Src IP = 192.168.1.100
  x"C0", x"A8", x"01", x"65", -- Dst IP = 192.168.1.101
  -- ICMP Echo Request (8 bytes header + payload)
  x"08", x"00", x"00", x"00", -- Type=8 (Echo Req), Code=0, Checksum (dummy)
  x"12", x"34", x"00", x"01", -- ID, Seq
  -- Payload (18 bytes to pad frame length)
  x"48", x"65", x"6C", x"6C", x"6F", x"20", x"46", x"50",
  x"47", x"41", x"21", x"21", x"21", x"21", x"21", x"21", x"00", x"FE",
  -- CRC32 (4 Bytes)
  x"49", x"e6", x"26", x"c0"
  );

  ------------------------------------------------------------------------
  -- FSM and delay counter
  ------------------------------------------------------------------------
  signal idx       : integer range 0 to frame_bytes - 1 := 0;
  signal active    : std_logic                          := '0';
  signal delay_cnt : natural range 0 to STARTUP_DELAY   := 0;

  signal tvalid_r, tlast_r : std_logic                    := '0';
  signal tdata_r           : std_logic_vector(7 downto 0) := (others => '0');
begin

  tvalid <= tvalid_r;
  tlast  <= tlast_r;
  tdata  <= tdata_r;

  process (clk, resetn)
  begin
    if resetn = '0' then
      idx       <= 0;
      active    <= '0';
      delay_cnt <= 0;
      tvalid_r  <= '0';
      tlast_r   <= '0';
      tdata_r   <= (others => '0');

    elsif rising_edge(clk) then
      if active = '0' then
        -- count delay cycles before starting transmission
        if delay_cnt < STARTUP_DELAY then
          delay_cnt <= delay_cnt + 1;
        else
          active   <= '1';
          tvalid_r <= '1';
          idx      <= 0;
          tdata_r  <= frame_rom(0);
          tlast_r  <= '0';
        end if;

      else
        if tvalid_r = '1' and tready = '1' then
          if idx = frame_bytes - 1 then
            -- last beat accepted
            tvalid_r <= '0';
            tlast_r  <= '0';
            active   <= '0'; -- done
          else
            idx     <= idx + 1;
            tdata_r <= frame_rom(idx + 1);
            if idx = frame_bytes - 2 then
              tlast_r <= '1'; -- assert TLAST on the next beat
            else
              tlast_r <= '0';
            end if;
          end if;
        end if;
      end if;
    end if;
  end process;

end architecture;
