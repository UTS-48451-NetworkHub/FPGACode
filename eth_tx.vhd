library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_tx is
  port (
    -- Mandatory (AXI-S Bus)
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;
    -- Outputs
    o_dp : out std_logic;
    o_dn : out std_logic;
    -- Inputs (AXI-S Bus)
    tvalid : in std_logic;
    tready : out std_logic;
    tkeep  : in std_logic;
    tlast  : in std_logic;
    tdata  : in std_logic_vector(7 downto 0)
  );
end eth_tx;

architecture arch of eth_tx is

  -- TX Data Streams
  signal r_bs      : std_logic                    := '0';
  signal r_wr_data : std_logic_vector(7 downto 0) := (others => '0');
  signal r_rd_data : std_logic_vector(7 downto 0) := (others => '0');

  -- TX Active Signal
  signal r_tx_active : std_logic := '0';

  -- TX Output Multiplexer Signals
  signal r_mult_in_mcn : std_logic := '0';
  signal r_mult_in_nlp : std_logic := '0';
  signal r_mult_out    : std_logic := '0';

  -- TX Ram Signals
  signal r_wr_en   : std_logic                     := '0';
  signal r_wr_addr : std_logic_vector(10 downto 0) := (others => '0');
  signal r_rd_addr : std_logic_vector(10 downto 0) := (others => '0');

  -- TX Ram Clock Signals
  signal r_wr_clk_en : std_logic := '0';
  signal r_rd_clk_en : std_logic := '0';
  signal r_wr_clk    : std_logic := '0';
  signal r_rd_clk    : std_logic := '0';

  -- TX PISO Shift Register Signals
  signal r_sr_data_valid : std_logic := '0';
  signal r_sr_data_ready : std_logic := '0';
  signal r_sr_bit_valid  : std_logic := '0';

  -- TX FSM Communication Signals
  signal r_fsm_receive_ready : std_logic := '0';
  signal r_fsm_tx_req        : std_logic := '0';

begin
  r_wr_clk <= r_wr_clk_en and clk;
  r_rd_clk <= r_rd_clk_en and clk;

  c_ram : entity work.ram_eth_packet(SYN)
    port map
    (
      data      => r_wr_data,
      rdaddress => r_rd_addr,
      clock     => r_rd_clk,
      wraddress => r_wr_addr,
      wren      => r_wr_en,
      q         => r_rd_data
    );

  c_mnc_enc : entity work.tx_mnc_encoder(arch)
    port map
    (
      i_reset   => r_tx_active,
      i_eth_bs  => r_bs,
      i_clk     => clk,
      o_mnc_out => r_mult_in_mcn
    );

  c_nlp_gen : entity work.tx_nlp_gen(arch)
    port map
    (
      i_enable  => r_tx_active,
      i_clk     => clk,
      o_nlp_out => r_mult_in_nlp
    );

  c_diff_out : entity work.buff_diff_out(arch)
    port map
    (
      I   => r_mult_out,
      O_p => o_dp,
      O_n => o_dn
    );

  c_mux : entity work.tx_mux(SYN)
    port map
    (
      data0  => r_mult_in_mcn,
      data1  => r_mult_in_nlp,
      sel    => r_tx_active,
      result => r_mult_out
    );

  c_piso_sr : entity work.sr_piso(rtl)
    port map
    (
      clk        => clk,
      rst_n      => resetn,
      byte_in    => r_rd_data,
      byte_valid => r_sr_data_valid,
      byte_ready => r_sr_data_ready,
      bit_out    => r_bs,
      bit_valid  => r_sr_bit_valid
    );

  c_fsm_pt : entity work.tx_fsm_pt(arch)
    port map
    (
      clk           => clk,
      resetn        => resetn,
      tx_active     => r_tx_active,
      next_byte     => r_sr_data_valid,
      receive_ready => r_fsm_receive_ready,
      tx_req        => r_fsm_tx_req,
      addr          => r_rd_addr,
      data          => r_rd_data
    );

  c_fsm_axi : entity work.tx_fsm_axi(arch)
    port map
    (
      clk           => clk,
      resetn        => resetn,
      receive_ready => r_fsm_receive_ready,
      tx_req        => r_fsm_tx_req,
      wr_en         => r_wr_en,
      tlast         => tlast,
      tkeep         => tkeep,
      tready        => tready,
      tvalid        => tvalid,
      addr          => r_wr_addr
    );

end architecture arch;
