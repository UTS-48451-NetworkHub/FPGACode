--! @title Ethernet FCS (CRC-32) checker
--! This file implements an Ethernet FCS (CRC-32) checker. It wraps a rx_fcs_crc core configured for the standard Ethernet polynomial 0x04C11DB7 (reflected 0xEDB88320), seeded to 0xFFFFFFFF and using a final XOR of 0xFFFFFFFF. Bytes arrive on data[7:0] when enable='1'; the checker updates the running CRC until begin_fcs is asserted, then captures the next four received FCS bytes. It declares the frame valid by raising fcs_valid when the computed CRC (after the final XOR inside the core) matches the received CRC. The interface uses clk and an active-low rst, with simple handshaking via enable/begin_fcs.

library IEEE;
use IEEE.std_logic_1164.all;

entity rx_fcs_verify is
  port (
    -- Mandatory Signals
    clk : in std_logic; --! System Clock
    rst : in std_logic; --! Active Low Reset

    -- Byte/word input side (handshake)
    data      : in std_logic_vector(7 downto 0); --! 8-bit data input
    enable    : in std_logic; --! Enable Pin to send data through to CRC generation
    begin_fcs : in std_logic; --! Enable to end generation and send through comparison CRC Bytes

    -- Serial output side
    fcs_valid : out std_logic --! Output bit to Say Valid CRC in Packet
  );
end entity;

architecture rtl of rx_fcs_verify is
  --! CRC Register init 0xFFFFFFFF
  signal crc_reg : std_logic_vector(31 downto 0) := (others => '1');
  --! Next Generated CRC
  signal crc_next : std_logic_vector(31 downto 0) := (others => '0');
  --! Previous CRC
  signal crc_existing : std_logic_vector(31 downto 0) := (others => '0');
  --! Valid FCS Register
  signal fcs_reg : std_logic := '0';
  --! Register thats set by Begin FCS
  signal final : boolean := false;
  --! Count of the Final Four Bytes
  signal finalcount : std_logic := '0';
  --! Pin to Reset the CRC Generation
  signal crc_reset : std_logic := '0';

begin

  --! Instantiate the CRC-32 core
  crc_core : entity work.rx_fcs_crc
    port map
    (
      clk    => clk,
      rst    => crc_reset,
      crc_en => enable, -- update on valid byte
      data   => data,
      crcOut => crc_next
    );

  crc_reset <= rst and enable;

  --! Sequential process for state update
  p_cmb: process (clk, rst, enable)
  begin
    if rst = '0' or enable = '0' then
      crc_reg      <= (others => '0');
      fcs_reg      <= '0';
      crc_existing <= x"00000000";
      finalcount   <= '0';
      final        <= false;
    elsif rising_edge(clk) then
      if enable = '1' and final = false then
        crc_reg <= crc_next;
      end if;

      if begin_fcs = '1' and final = false then
        final <= true;
      end if;

      if final then
        -- Accumulate 4 FCS bytes into crc_existing
        if crc_existing(7 downto 0) = x"00" then
          if finalcount = '0' then
            crc_reg    <= crc_next;
            finalcount <= '1';
          end if;
          crc_existing(7 downto 0) <= data;
        elsif crc_existing(15 downto 8) = x"00" then
          crc_existing(15 downto 8) <= data;
        elsif crc_existing(23 downto 16) = x"00" then
          crc_existing(23 downto 16) <= data;
        elsif crc_existing(31 downto 24) = x"00" then
          crc_existing(31 downto 24) <= data;
        end if;

        -- FCS valid if computed CRC xor 0xFFFFFFFF == 0
        if crc_reg = crc_existing and enable = '1' then
          fcs_reg    <= '1';
          finalcount <= '0';
        else
          fcs_reg <= '0';
        end if;
      end if;
    end if;
  end process;

  fcs_valid <= fcs_reg;

end architecture;
