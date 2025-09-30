library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity interconnect is
  port (
    -- Mandatory (AXI-S Bus)
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;

    -------- PORT 1 --------
    -- AXI4-Stream Receiver --
    PA_RX_tdata  : in std_logic_vector(7 downto 0);
    PA_RX_tvalid : in std_logic;
    PA_RX_tlast  : in std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PA_TX_tdata  : out std_logic_vector(7 downto 0);
    PA_TX_tvalid : out std_logic;
    PA_TX_tlast  : out std_logic;

    -------- PORT 2 --------
    -- AXI4-Stream Receiver --
    PB_RX_tdata  : in std_logic_vector(7 downto 0);
    PB_RX_tvalid : in std_logic;
    PB_RX_tlast  : in std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PB_TX_tdata  : out std_logic_vector(7 downto 0);
    PB_TX_tvalid : out std_logic;
    PB_TX_tlast  : out std_logic;

    -------- PORT 3 --------
    -- AXI4-Stream Receiver --
    PC_RX_tdata  : in std_logic_vector(7 downto 0);
    Pc_RX_tvalid : in std_logic;
    PC_RX_tlast  : in std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PC_TX_tdata  : out std_logic_vector(7 downto 0);
    PC_TX_tvalid : out std_logic;
    PC_TX_tlast  : out std_logic;

    -------- PORT 4 --------
    -- AXI4-Stream Receiver --
    PD_RX_tdata  : in std_logic_vector(7 downto 0);
    PD_RX_tvalid : in std_logic;
    PD_RX_tlast  : in std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PD_TX_tdata  : out std_logic_vector(7 downto 0);
    PD_TX_tvalid : out std_logic;
    PD_TX_tlast  : out std_logic;

    -------- PORT 5 --------
    -- AXI4-Stream Receiver --
    PE_RX_tdata  : in std_logic_vector(7 downto 0);
    PE_RX_tvalid : in std_logic;
    PE_RX_tlast  : in std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PE_TX_tdata  : out std_logic_vector(7 downto 0);
    PE_TX_tvalid : out std_logic;
    PE_TX_tlast  : out std_logic
  );
end interconnect;

architecture arch of interconnect is

  -- Port Type
  type port_t is (
    NO_PORT,
    PORT_A,
    PORT_B,
    PORT_C,
    PORT_D,
    PORT_E
  );

  signal last_port   : port_t := NO_PORT;
  signal active_port : port_t := NO_PORT;

begin

  -- Port Contention Controller --
  p_contention_controller : process (clk)
  begin
    if resetn = '0' then
      active_port <= NO_PORT;
      last_port   <= NO_PORT;
    else
      if active_port = NO_PORT then
        -- Increment last port & check valids
        if last_port = NO_PORT then
          last_port <= PORT_A;

        elsif last_port = PORT_A then
          last_port <= PORT_B;
          if PA_RX_tvalid = '1' then
            active_port <= PORT_A;
          end if;

        elsif last_port = PORT_B then
          last_port <= PORT_C;
          if PB_RX_tvalid = '1' then
            active_port <= PORT_B;
          end if;

        elsif last_port = PORT_C then
          last_port <= PORT_D;
          if PC_RX_tvalid = '1' then
            active_port <= PORT_C;
          end if;

        elsif last_port = PORT_D then
          last_port <= PORT_E;
          if PD_RX_tvalid = '1' then
            active_port <= PORT_D;
          end if;

        elsif last_port = PORT_E then
          last_port <= PORT_A;
          if PE_RX_tvalid = '1' then
            active_port <= PORT_E;
          end if;

        end if;
      else
        if active_port = PORT_A then
          if PA_RX_tlast = '1' then
            active_port <= NO_PORT;
          end if;
        elsif active_port = PORT_B then
          if PB_RX_tlast = '1' then
            active_port <= NO_PORT;
          end if;
        elsif active_port = PORT_C then
          if PC_RX_tlast = '1' then
            active_port <= NO_PORT;
          end if;
        elsif active_port = PORT_D then
          if PD_RX_tlast = '1' then
            active_port <= NO_PORT;
          end if;
        elsif active_port = PORT_E then
          if PE_RX_tlast = '1' then
            active_port <= NO_PORT;
          end if;
        end if;
      end if;
    end if;
  end process;

  -- Output Controller --
  p_output_controller : process (clk, active_port)
  begin
    if active_port = PORT_A then
      PA_TX_tvalid <= '0';
      PA_TX_tlast  <= '0';
      PA_TX_tdata  <= (others => '0');

      PB_TX_tvalid <= PA_RX_tvalid;
      PB_TX_tlast  <= PA_RX_tlast;
      PB_TX_tdata  <= PA_RX_tdata;

      PC_TX_tvalid <= PA_RX_tvalid;
      PC_TX_tlast  <= PA_RX_tlast;
      PC_TX_tdata  <= PA_RX_tdata;

      PD_TX_tvalid <= PA_RX_tvalid;
      PD_TX_tlast  <= PA_RX_tlast;
      PD_TX_tdata  <= PA_RX_tdata;

      PE_TX_tvalid <= PA_RX_tvalid;
      PE_TX_tlast  <= PA_RX_tlast;
      PE_TX_tdata  <= PA_RX_tdata;

    elsif active_port = PORT_B then
      PA_TX_tvalid <= PB_RX_tvalid;
      PA_TX_tlast  <= PB_RX_tlast;
      PA_TX_tdata  <= PB_RX_tdata;

      PB_TX_tvalid <= '0';
      PB_TX_tlast  <= '0';
      PB_TX_tdata  <= (others => '0');

      PC_TX_tvalid <= PB_RX_tvalid;
      PC_TX_tlast  <= PB_RX_tlast;
      PC_TX_tdata  <= PB_RX_tdata;

      PD_TX_tvalid <= PB_RX_tvalid;
      PD_TX_tlast  <= PB_RX_tlast;
      PD_TX_tdata  <= PB_RX_tdata;

      PE_TX_tvalid <= PB_RX_tvalid;
      PE_TX_tlast  <= PB_RX_tlast;
      PE_TX_tdata  <= PB_RX_tdata;

    elsif active_port = PORT_C then
      PA_TX_tvalid <= PC_RX_tvalid;
      PA_TX_tlast  <= PC_RX_tlast;
      PA_TX_tdata  <= PC_RX_tdata;

      PB_TX_tvalid <= PC_RX_tvalid;
      PB_TX_tlast  <= PC_RX_tlast;
      PB_TX_tdata  <= PC_RX_tdata;

      PC_TX_tvalid <= '0';
      PC_TX_tlast  <= '0';
      PC_TX_tdata  <= (others => '0');

      PD_TX_tvalid <= PC_RX_tvalid;
      PD_TX_tlast  <= PC_RX_tlast;
      PD_TX_tdata  <= PC_RX_tdata;

      PE_TX_tvalid <= PC_RX_tvalid;
      PE_TX_tlast  <= PC_RX_tlast;
      PE_TX_tdata  <= PC_RX_tdata;

    elsif active_port = PORT_D then
      PA_TX_tvalid <= PD_RX_tvalid;
      PA_TX_tlast  <= PD_RX_tlast;
      PA_TX_tdata  <= PD_RX_tdata;

      PB_TX_tvalid <= PD_RX_tvalid;
      PB_TX_tlast  <= PD_RX_tlast;
      PB_TX_tdata  <= PD_RX_tdata;

      PC_TX_tvalid <= PD_RX_tvalid;
      PC_TX_tlast  <= PD_RX_tlast;
      PC_TX_tdata  <= PD_RX_tdata;

      PD_TX_tvalid <= '0';
      PD_TX_tlast  <= '0';
      PD_TX_tdata  <= (others => '0');

      PE_TX_tvalid <= PD_RX_tvalid;
      PE_TX_tlast  <= PD_RX_tlast;
      PE_TX_tdata  <= PD_RX_tdata;

    elsif active_port = PORT_E then
      PA_TX_tvalid <= PE_RX_tvalid;
      PA_TX_tlast  <= PE_RX_tlast;
      PA_TX_tdata  <= PE_RX_tdata;

      PB_TX_tvalid <= PE_RX_tvalid;
      PB_TX_tlast  <= PE_RX_tlast;
      PB_TX_tdata  <= PE_RX_tdata;

      PC_TX_tvalid <= PE_RX_tvalid;
      PC_TX_tlast  <= PE_RX_tlast;
      PC_TX_tdata  <= PE_RX_tdata;

      PD_TX_tvalid <= PE_RX_tvalid;
      PD_TX_tlast  <= PE_RX_tlast;
      PD_TX_tdata  <= PE_RX_tdata;

      PE_TX_tvalid <= '0';
      PE_TX_tlast  <= '0';
      PE_TX_tdata  <= (others => '0');

    elsif active_port = NO_PORT then
      PA_TX_tvalid <= '0';
      PA_TX_tlast  <= '0';
      PA_TX_tdata  <= (others => '0');

      PB_TX_tvalid <= '0';
      PB_TX_tlast  <= '0';
      PB_TX_tdata  <= (others => '0');

      PC_TX_tvalid <= '0';
      PC_TX_tlast  <= '0';
      PC_TX_tdata  <= (others => '0');

      PD_TX_tvalid <= '0';
      PD_TX_tlast  <= '0';
      PD_TX_tdata  <= (others => '0');

      PE_TX_tvalid <= '0';
      PE_TX_tlast  <= '0';
      PE_TX_tdata  <= (others => '0');

    end if;
  end process;

end architecture;