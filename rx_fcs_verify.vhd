-- Ethernet FCS (CRC-32) checker
-- Polynomial: 0x04C11DB7 (reflected form 0xEDB88320)
-- Initial value: 0xFFFFFFFF
-- Final XOR: 0xFFFFFFFF
-- Valid FCS check: computed CRC (after final XOR) == received CRC

library IEEE;
use IEEE.std_logic_1164.all;

entity rx_fcs_verify is
  port(
    clk       : in  std_logic;
    rst       : in  std_logic;
    data      : in  std_logic_vector(7 downto 0);
    enable    : in  std_logic;
    begin_fcs : in  std_logic;
    fcs_valid : out std_logic
  );
end entity;

architecture rtl of rx_fcs_verify is
  signal crc_reg      : std_logic_vector(31 downto 0) := (others => '1'); -- init 0xFFFFFFFF
  signal crc_next     : std_logic_vector(31 downto 0) := (others => '0');
  signal crc_existing : std_logic_vector(31 downto 0) := (others => '0');
  signal fcs_reg      : std_logic                     := '0';
  signal final        : boolean                       := false;
  signal finalcount   : std_logic                     := '0';
  signal crc_reset    : std_logic                     := '0';

begin

  -- Instantiate your CRC-32 core
  crc_core : entity work.rx_fcs_crc
    port map(
      clk    => clk,
      rst    => crc_reset,
      crc_en => enable,                 -- update on valid byte
      data   => data,
      crcOut => crc_next
    );

    crc_reset <= rst and enable;

  process(clk, rst, enable)
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
