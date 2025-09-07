library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity eth_tx is
  port (
    clk    : in std_logic; -- 100 MHz
    i_data : in std_logic_vector(7 downto 0);
    o_dp   : out std_logic;
    o_dn   : out std_logic
  );
end eth_tx;

architecture arch of eth_tx is

  -- TX Serial Data Stream
  signal r_bs : std_logic := '0';

  -- TX Active Signal
  signal r_inactive : std_logic := '0';

  -- TX Output Multiplexer Signals
  signal r_mult_in_mcn : std_logic := '0';
  signal r_mult_in_nlp : std_logic := '0';
  signal r_mult_out    : std_logic := '0';

  -- TX Ram Signals
  signal r_wr_en   : std_logic                     := '0';
  signal r_wr_data : std_logic_vector(7 downto 0)  := (others => '0');
  signal r_wr_addr : std_logic_vector(10 downto 0) := (others => '0');
  signal r_rd_data : std_logic_vector(7 downto 0)  := (others => '0');
  signal r_rd_addr : std_logic_vector(10 downto 0) := (others => '0');

  -- TX Ram Clock Signals
  signal r_wr_clk_en : std_logic := '0';
  signal r_rd_clk_en : std_logic := '0';
  signal r_wr_clk    : std_logic := '0';
  signal r_rd_clk    : std_logic := '0';

begin
  r_wr_clk <= r_wr_clk_en and clk;
  r_rd_clk <= r_rd_clk_en and clk;

  c_tx_ram : entity work.ram_eth_packet(SYN)
    port map
    (
      data      => r_wr_data,
      rdaddress => r_rd_addr,
      rdclock   => r_rd_clk,
      wraddress => r_wr_addr,
      wrclock   => r_wr_clk,
      wren      => r_wr_en,
      q         => r_rd_data
    );

  c_mnc_gen : entity work.tx_mnc_encoder(arch)
    port map
    (
      i_reset   => r_inactive,
      i_eth_bs  => r_bs,
      i_clk     => clk,
      o_mnc_out => r_mult_in_mcn
    );

  c_nlp_gen : entity work.tx_nlp_gen(arch)
    port map
    (
      i_enable  => r_inactive,
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
      sel    => r_inactive,
      result => r_mult_out
    );

  -- TODO: Still need PISO shift register

  c_eth_fsm : entity work.tx_fsm(arch)
    port map
    (
      clk => clk
    );

end architecture arch;
