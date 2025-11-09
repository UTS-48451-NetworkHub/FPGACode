library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

--! This entity puts together all other TX pieces into a cohesive entity that takes in an AXI4-Stream data stream and transmits it out in 10Base-T ethernet format.
--! For a full explanation of how this works, see the theory of operation section of the TX section of the documentation.
entity eth_tx is
  port (
    -- Mandatory (AXI-S Bus)
    clk    : in std_logic; --! 100 MHz Clock
    resetn : in std_logic; --! Active low reset
    -- Outputs
    tx    : out std_logic; --! Manchester Encoded Output Signal
    tx_en : out std_logic; --! Driver Enable
    -- Inputs (AXI-S Bus)
    tvalid : in std_logic; --! AXI4-Stream valid signal
    tready : out std_logic; --! AXI4-Stream ready signal
    tlast  : in std_logic; --! AXI4-Stream end of packet signal
    tdata  : in std_logic_vector(7 downto 0) --! AXI4-Stream Data Line
  );
end eth_tx;

architecture arch of eth_tx is

  -- TX Data Streams
  signal r_bs      : std_logic                    := '0'; --! PISO to PHY. Ethernet bitstream
  signal r_rd_data : std_logic_vector(7 downto 0) := (others => '0'); --! RAM to PISO. Ethernet bytestream

  -- TX Ram Signals
  signal r_wr_en   : std_logic                     := '0'; --! FSM AXI to RAM. RAM write enable
  signal r_wr_addr : std_logic_vector(10 downto 0) := (others => '0'); --! FSM AXI to RAM. RAM write address
  signal r_rd_addr : std_logic_vector(10 downto 0) := (others => '0'); --! FSM PT to RAM. RAM read address

  -- TX PISO Shift Register Signals
  signal r_byte_valid : std_logic := '0'; --! FSM PT to SR PISO. High when a valid byte is on r_rd_data
  signal r_byte_ready : std_logic := '0'; --! SR PISO to FSM PT. High when the shift register is ready to accept a new byte
  signal r_bit_valid  : std_logic := '0'; --! SR PISO to FSM PHY. High when a valid bit is on r_bs

  -- TX FSM Communication Signals
  signal r_tx_active    : std_logic := '0'; --! FSM PT to FSM PHY. High when a transmit operation is in process
  signal r_packet_ready : std_logic := '0'; --! FSM PT to FSM AXI. High when the system is ready to transmit a new packet
  --! FSM AXI to FSM PT. High when a valid packet has been received over AXI4-Stream and is in the RAM
  signal r_packet_valid : std_logic := '0'; 

begin

  --! Physical layer finite state machine. For more details see module documentation.
  c_phy : entity work.tx_phy(arch)  
    port map
    (
      clk       => clk,
      resetn    => resetn,
      tx_active => r_tx_active,
      bit_valid => r_bit_valid,
      driver_en => tx_en,
      bit_in    => r_bs,
      tx_out    => tx
    );

  --! Altera RAM. 2 M9Ks providing dual port access with an 8 bit bus to 2048 bytes
  c_ram : entity work.ram_eth_packet(SYN)
    port map
    (
      data      => tdata,
      rdaddress => r_rd_addr,
      clock     => clk,
      wraddress => r_wr_addr,
      wren      => r_wr_en,
      q         => r_rd_data
    );

  --! Parallel-In, Serial-Out Shift Register. For more details see module documentation.
  c_piso_sr : entity work.sr_piso(rtl)
    generic map(
      WIDTH     => 8,
      BIT_DELAY => 10
    )
    port map
    (
      clk        => clk,
      resetn     => resetn,
      byte_in    => r_rd_data,
      byte_valid => r_byte_valid,
      byte_ready => r_byte_ready,
      bit_out    => r_bs,
      bit_valid  => r_bit_valid
    );

  --! Finite State Machine Packet Transmission. For more details see module documentation.
  c_fsm_pt : entity work.tx_fsm_pt(arch)
    port map
    (
      clk          => clk,
      resetn       => resetn,
      tx_active    => r_tx_active,
      byte_valid   => r_byte_valid,
      packet_ready => r_packet_ready,
      packet_valid => r_packet_valid,
      addr         => r_rd_addr,
      data         => r_rd_data,
      byte_ready   => r_byte_ready
    );

  --! Finite State Machine Advanced eXtensible Interface v4 Stream. For more details see module documentation.
  c_fsm_axi : entity work.tx_fsm_axi(arch)
    port map
    (
      clk          => clk,
      resetn       => resetn,
      packet_ready => r_packet_ready,
      packet_valid => r_packet_valid,
      wr_en        => r_wr_en,
      tlast        => tlast,
      tready       => tready,
      tvalid       => tvalid,
      addr         => r_wr_addr
    );

end architecture arch;
