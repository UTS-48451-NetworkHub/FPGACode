library ieee ;
  use ieee.std_logic_1164.all ;
  use ieee.numeric_std.all ;

entity ETH_TX is
  port (
  	i_eth_byte : in std_logic_vector(7 downto 0);
	i_clk_20M : in std_logic;
	i_clk_10M : in std_logic;
	o_dp      : out std_logic;
	o_dn      : out std_logic
  );
end ETH_TX;

architecture arch of ETH_TX is

	-- TX Serial Data Stream
	signal r_bs: std_logic := '0';

	-- TX Active Signal
	signal r_inactive : std_logic := '0';

	-- TX Output Multiplexer Signals
	signal r_mult_in_mcn : std_logic := '0';
	signal r_mult_in_nlp : std_logic := '0';
	signal r_mult_out    : std_logic := '0';

begin
	c_mnc_gen: entity work.MNC_ENCODER(arch)
		port map (
			i_reset =>   r_inactive,
			i_eth_bs =>  r_bs,
			i_clk =>     i_clk_20M,
			o_mnc_out => r_mult_in_mcn
		);

	c_nlp_gen: entity work.NLP_GEN(arch)
		port map (
			i_enable =>  r_inactive,
			i_clk =>     i_clk_10M,
			o_nlp_out => r_mult_in_nlp
		);

	c_diff_out: entity work.BUFF_OUTPUT_DIFF(arch)
		port map (
			I =>  r_mult_out,
			O =>  o_dp,
			OB => o_dn
		);

	c_mux: entity work.TX_MUX(SYN)
		port map (
			data0 => r_mult_in_mcn,
			data1 => r_mult_in_nlp,
			sel =>   r_inactive,
			result => r_mult_out
		);

end architecture arch;
