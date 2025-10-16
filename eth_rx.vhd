library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_rx is
  port (
    clk_in        : in std_logic;
    resetn        : in std_logic;
    manchester_in : in std_logic;
    tready        : in std_logic;
    tvalid        : out std_logic;
    tlast         : out std_logic;
    tdata         : out std_logic_vector(7 downto 0)
  );
end eth_rx;

architecture arch of eth_rx is

  signal data_bit     : std_logic                     := '0';
  signal bit_valid    : std_logic                     := '0';
  signal RX_timeout   : std_logic                     := '0';
  signal byte_out     : std_logic_vector(7 downto 0)  := (others => '0');
  signal byte_valid   : std_logic                     := '0';
  signal data_out     : std_logic_vector(7 downto 0)  := (others => '0');
  signal addr_out     : std_logic_vector(10 downto 0) := (others => '0');
  signal wr_en        : std_logic                     := '0';
  signal read_addr    : std_logic_vector(10 downto 0) := (others => '0');
  signal crc_en       : std_logic                     := '0';
  signal fcs_ok       : std_logic                     := '0';
  signal fcs_begin    : std_logic                     := '0';
  signal AXI_en       : std_logic                     := '0';
  signal packet_valid : std_logic                     := '0';
  signal packet_ready : std_logic                     := '0';
  signal size_out     : std_logic_vector(15 downto 0) := (others => '0');
  signal tdatasig     : std_logic_vector(7 downto 0)  := (others => '0');
  signal tlastsig     : std_logic                     := '0';
  signal fcs_fail     : std_logic                     := '0';
begin

  decoder : entity work.rx_decoder(Behavioral)
    port map
    (
      clk_in        => clk_in,
      manchester_in => manchester_in,
      resetn        => resetn,
      data_out      => data_bit,
      RX_timeout    => RX_timeout,
      bit_valid     => bit_valid
    );

  sipo : entity work.sr_sipo(Behavioral)
    port map
    (
      clk_in     => clk_in,
      resetn     => resetn,
      bit_in     => data_bit,
      bit_valid  => bit_valid,
      RX_timeout => RX_timeout,
      byte_out   => byte_out,
      byte_valid => byte_valid
    );

  pr_FSM : entity work.rx_fsm_pr(Behavioral)
    port map
    (
      clk_in       => clk_in,
      resetn       => resetn,
      byte_valid   => byte_valid,
      packet_ready => packet_ready,
      RX_timeout   => RX_timeout,
      wr_en        => wr_en,
      packet_valid => packet_valid,
      data_in      => byte_out,
      addr_out     => addr_out,
      data_out     => data_out,
      size_out     => size_out
    );

  c_ram : entity work.ram_eth_packet(SYN)
    port map
    (
      data      => data_out,
      rdaddress => read_addr,
      clock     => clk_in,
      wraddress => addr_out,
      wren      => wr_en,
      q         => tdatasig
    );

  axi_FSM : entity work.rx_fsm_axi(Behavioral)
    port map
    (
      clk_in       => clk_in,
      resetn       => resetn,
      AXI_en       => AXI_en,
      tready       => tready,
      packet_valid => packet_valid,
      size_in      => size_out,
      packet_ready => packet_ready,
      fcs_fail     => fcs_fail,
      tvalid       => tvalid,
      tlast        => tlastsig,
      addr_in      => read_addr
    );

  crc : entity work.rx_fcs_verify(rtl)
    port map
    (
      clk       => clk_in,
      rst       => resetn,
      data      => tdatasig,
      enable    => crc_en,
      begin_fcs => fcs_begin,
      fcs_valid => fcs_ok
    );

  addr_reader : entity work.rx_fsm_adr(Behavioral)
    port map
    (
      clock     => clk_in,
      reset     => resetn,
      valid     => packet_valid,
      tready    => tready,
      tlast     => tlastsig,
      fcs_valid => fcs_ok,
      size      => size_out,
      axi_en    => AXI_en,
      crc_en    => crc_en,
      begin_fcs => fcs_begin,
      addr      => read_addr,
      fcs_fail  => fcs_fail
    );

  tdata <= tdatasig;
  tlast <= tlastsig;

end arch;
