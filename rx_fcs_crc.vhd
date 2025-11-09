library IEEE;
use IEEE.std_logic_1164.all;

--! @title CRC Generation through Polynomial
--! CRC polynomial coefficients: x^32 + x^26 + x^23 + x^22 + x^16 + x^12 + x^11 + x^10 + x^8 + x^7 + x^5 + x^4 + x^2 + x + 1
--! In hex = 0x4C11DB7. 
--! CRC width: 32 bits.
--! CRC shift direction: right (little endian).
--! Input word width: 8 bits.

entity rx_fcs_crc is
  port (
    -- Mandatory Signals
    clk : in std_logic; --! System clock
    rst : in std_logic; --! Active low reset

    -- Byte/word input side (handshake)
    crc_en : in std_logic; --! Generation enable signal: update CRC when '1'
    data   : in std_logic_vector(7 downto 0); --! 8-bit data input

    -- Serial output side
    crcOut : out std_logic_vector(31 downto 0) --! Current CRC value
  );
end entity rx_fcs_crc;

architecture Behavioral of rx_fcs_crc is
  signal crc_in_signal  : std_logic_vector(31 downto 0) := x"FFFFFFFF"; --! Current CRC state (Updated on Clock Cycle)
  signal crc_out_signal : std_logic_vector(31 downto 0); --! Next CRC state (combinational)
begin
  -- Output assignment (registered CRC state is exposed)
  crcOut <= crc_in_signal xor x"FFFFFFFF";

  -- Combinational logic for next CRC state (based on current state + input data)
  -- Each bit is XOR of specific taps from CRC and input data (matches polynomial definition)
  crc_out_signal(0)  <= crc_in_signal(2) xor crc_in_signal(8) xor data(2);
  crc_out_signal(1)  <= crc_in_signal(0) xor crc_in_signal(3) xor crc_in_signal(9) xor data(0) xor data(3);
  crc_out_signal(2)  <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(4) xor crc_in_signal(10) xor data(0) xor data(1) xor data(4);
  crc_out_signal(3)  <= crc_in_signal(1) xor crc_in_signal(2) xor crc_in_signal(5) xor crc_in_signal(11) xor data(1) xor data(2) xor data(5);
  crc_out_signal(4)  <= crc_in_signal(0) xor crc_in_signal(2) xor crc_in_signal(3) xor crc_in_signal(6) xor crc_in_signal(12) xor data(0) xor data(2) xor data(3) xor data(6);
  crc_out_signal(5)  <= crc_in_signal(1) xor crc_in_signal(3) xor crc_in_signal(4) xor crc_in_signal(7) xor crc_in_signal(13) xor data(1) xor data(3) xor data(4) xor data(7);
  crc_out_signal(6)  <= crc_in_signal(4) xor crc_in_signal(5) xor crc_in_signal(14) xor data(4) xor data(5);
  crc_out_signal(7)  <= crc_in_signal(0) xor crc_in_signal(5) xor crc_in_signal(6) xor crc_in_signal(15) xor data(0) xor data(5) xor data(6);
  crc_out_signal(8)  <= crc_in_signal(1) xor crc_in_signal(6) xor crc_in_signal(7) xor crc_in_signal(16) xor data(1) xor data(6) xor data(7);
  crc_out_signal(9)  <= crc_in_signal(7) xor crc_in_signal(17) xor data(7);
  crc_out_signal(10) <= crc_in_signal(2) xor crc_in_signal(18) xor data(2);
  crc_out_signal(11) <= crc_in_signal(3) xor crc_in_signal(19) xor data(3);
  crc_out_signal(12) <= crc_in_signal(0) xor crc_in_signal(4) xor crc_in_signal(20) xor data(0) xor data(4);
  crc_out_signal(13) <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(5) xor crc_in_signal(21) xor data(0) xor data(1) xor data(5);
  crc_out_signal(14) <= crc_in_signal(1) xor crc_in_signal(2) xor crc_in_signal(6) xor crc_in_signal(22) xor data(1) xor data(2) xor data(6);
  crc_out_signal(15) <= crc_in_signal(2) xor crc_in_signal(3) xor crc_in_signal(7) xor crc_in_signal(23) xor data(2) xor data(3) xor data(7);
  crc_out_signal(16) <= crc_in_signal(0) xor crc_in_signal(2) xor crc_in_signal(3) xor crc_in_signal(4) xor crc_in_signal(24) xor data(0) xor data(2) xor data(3) xor data(4);
  crc_out_signal(17) <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(3) xor crc_in_signal(4) xor crc_in_signal(5) xor crc_in_signal(25) xor data(0) xor data(1) xor data(3) xor data(4) xor data(5);
  crc_out_signal(18) <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(2) xor crc_in_signal(4) xor crc_in_signal(5) xor crc_in_signal(6) xor crc_in_signal(26) xor data(0) xor data(1) xor data(2) xor data(4) xor data(5) xor data(6);
  crc_out_signal(19) <= crc_in_signal(1) xor crc_in_signal(2) xor crc_in_signal(3) xor crc_in_signal(5) xor crc_in_signal(6) xor crc_in_signal(7) xor crc_in_signal(27) xor data(1) xor data(2) xor data(3) xor data(5) xor data(6) xor data(7);
  crc_out_signal(20) <= crc_in_signal(3) xor crc_in_signal(4) xor crc_in_signal(6) xor crc_in_signal(7) xor crc_in_signal(28) xor data(3) xor data(4) xor data(6) xor data(7);
  crc_out_signal(21) <= crc_in_signal(2) xor crc_in_signal(4) xor crc_in_signal(5) xor crc_in_signal(7) xor crc_in_signal(29) xor data(2) xor data(4) xor data(5) xor data(7);
  crc_out_signal(22) <= crc_in_signal(2) xor crc_in_signal(3) xor crc_in_signal(5) xor crc_in_signal(6) xor crc_in_signal(30) xor data(2) xor data(3) xor data(5) xor data(6);
  crc_out_signal(23) <= crc_in_signal(3) xor crc_in_signal(4) xor crc_in_signal(6) xor crc_in_signal(7) xor crc_in_signal(31) xor data(3) xor data(4) xor data(6) xor data(7);
  crc_out_signal(24) <= crc_in_signal(0) xor crc_in_signal(2) xor crc_in_signal(4) xor crc_in_signal(5) xor crc_in_signal(7) xor data(0) xor data(2) xor data(4) xor data(5) xor data(7);
  crc_out_signal(25) <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(2) xor crc_in_signal(3) xor crc_in_signal(5) xor crc_in_signal(6) xor data(0) xor data(1) xor data(2) xor data(3) xor data(5) xor data(6);
  crc_out_signal(26) <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(2) xor crc_in_signal(3) xor crc_in_signal(4) xor crc_in_signal(6) xor crc_in_signal(7) xor data(0) xor data(1) xor data(2) xor data(3) xor data(4) xor data(6) xor data(7);
  crc_out_signal(27) <= crc_in_signal(1) xor crc_in_signal(3) xor crc_in_signal(4) xor crc_in_signal(5) xor crc_in_signal(7) xor data(1) xor data(3) xor data(4) xor data(5) xor data(7);
  crc_out_signal(28) <= crc_in_signal(0) xor crc_in_signal(4) xor crc_in_signal(5) xor crc_in_signal(6) xor data(0) xor data(4) xor data(5) xor data(6);
  crc_out_signal(29) <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(5) xor crc_in_signal(6) xor crc_in_signal(7) xor data(0) xor data(1) xor data(5) xor data(6) xor data(7);
  crc_out_signal(30) <= crc_in_signal(0) xor crc_in_signal(1) xor crc_in_signal(6) xor crc_in_signal(7) xor data(0) xor data(1) xor data(6) xor data(7);
  crc_out_signal(31) <= crc_in_signal(1) xor crc_in_signal(7) xor data(1) xor data(7);

  --! Sequential process for state update
  process (clk, rst)
  begin
    if (rst = '0') then
      -- Initialize CRC state to all '1's (standard CRC init value)
      crc_in_signal <= x"FFFFFFFF";
    elsif rising_edge(clk) then
      if (crc_en = '1') then
        -- Update CRC state with next computed value
        crc_in_signal <= crc_out_signal;
      end if;
    end if;
  end process;
end architecture Behavioral;
