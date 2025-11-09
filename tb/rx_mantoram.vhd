library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx_mantoram is
  port (
    clk_in        : in std_logic;
    resetn        : in std_logic;
    manchester_in : in std_logic;
    packet_ready  : in std_logic;
    packet_valid  : out std_logic := '0';
    size_out      : out std_logic_vector(15 downto 0);
    tdata         : out std_logic_vector(7 downto 0);
    addr_in       : in std_logic_vector(10 downto 0)
  );

end rx_mantoram;

architecture arch of rx_mantoram is

  signal data_bit   : std_logic := '0';
  signal bit_valid  : std_logic := '0';
  signal RX_timeout : std_logic := '0';
  signal byte_out   : std_logic_vector(7 downto 0);
  signal byte_valid : std_logic;
  signal data_out   : std_logic_vector(7 downto 0);
  signal addr_out   : std_logic_vector(10 downto 0);
  signal wr_en      : std_logic := '0';
begin

  decoder : entity work.RX_decoder(Behavioral)
    port map
    (
      clk_in        => clk_in,
      manchester_in => manchester_in,
      resetn        => resetn,
      data_out      => data_bit,
      RX_timeout    => RX_timeout,
      bit_valid     => bit_valid
    );

  sipo : entity work.RX_sipo(Behavioral)
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

  c_ram : entity work.rx_ram(SYN)
    port map
    (
      data      => data_out,
      rdaddress => addr_in,
      clock     => clk_in,
      wraddress => addr_out,
      wren      => wr_en,
      q         => tdata
    );

end arch;