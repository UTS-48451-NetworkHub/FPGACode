library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_tx is
  port (
    -- Mandatory (AXI-S Bus)
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Outputs
    tx    : out std_logic;
    tx_en : out std_logic;
    -- Inputs (AXI-S Bus)
    tvalid : in std_logic;
    tready : out std_logic;
    tlast  : in std_logic;
    tdata  : in std_logic_vector(7 downto 0)
  );
end eth_tx;

architecture arch of eth_tx is

  -- TX Data Streams
  signal r_bs      : std_logic                    := '0';
  signal r_rd_data : std_logic_vector(7 downto 0) := (others => '0');
  signal r_wr_data : std_logic_vector(7 downto 0) := (others => '0');

  -- TX Ram Signals
  signal r_wr_en   : std_logic                     := '0';
  signal r_wr_addr : std_logic_vector(10 downto 0) := (others => '0');
  signal r_rd_addr : std_logic_vector(10 downto 0) := (others => '0');

  -- TX PISO Shift Register Signals
  signal r_byte_valid : std_logic := '0';
  signal r_byte_ready : std_logic := '0';
  signal r_bit_valid  : std_logic := '0';

  -- TX FSM Communication Signals
  signal r_tx_active    : std_logic := '0';
  signal r_packet_ready : std_logic := '0';
  signal r_packet_valid : std_logic := '0';

begin

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

  p_tdata_reg : process(clk)
  begin
    if rising_edge(clk) then
      r_wr_data <= tdata;
    end if;
  end process;

end architecture arch;
