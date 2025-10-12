library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity axi4s_interconnect is
  port (
    -- Mandatory (AXI-S Bus)
    clk    : in std_logic; -- 100 MHz
    resetn : in std_logic;

    -------- PORT 1 --------
    -- AXI4-Stream Receiver --
    PA_RX_tdata  : in std_logic_vector(7 downto 0);
    PA_RX_tvalid : in std_logic;
    PA_RX_tlast  : in std_logic;
    PA_RX_tready : out std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PA_TX_tdata  : out std_logic_vector(7 downto 0);
    PA_TX_tvalid : out std_logic;
    PA_TX_tlast  : out std_logic;

    -------- PORT 2 --------
    -- AXI4-Stream Receiver --
    PB_RX_tdata  : in std_logic_vector(7 downto 0);
    PB_RX_tvalid : in std_logic;
    PB_RX_tlast  : in std_logic;
    PB_RX_tready : out std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PB_TX_tdata  : out std_logic_vector(7 downto 0);
    PB_TX_tvalid : out std_logic;
    PB_TX_tlast  : out std_logic;

    -------- PORT 3 --------
    -- AXI4-Stream Receiver --
    PC_RX_tdata  : in std_logic_vector(7 downto 0);
    PC_RX_tvalid : in std_logic;
    PC_RX_tlast  : in std_logic;
    PC_RX_tready : out std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PC_TX_tdata  : out std_logic_vector(7 downto 0);
    PC_TX_tvalid : out std_logic;
    PC_TX_tlast  : out std_logic;

    -------- PORT 4 --------
    -- AXI4-Stream Receiver --
    PD_RX_tdata  : in std_logic_vector(7 downto 0);
    PD_RX_tvalid : in std_logic;
    PD_RX_tlast  : in std_logic;
    PD_RX_tready : out std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PD_TX_tdata  : out std_logic_vector(7 downto 0);
    PD_TX_tvalid : out std_logic;
    PD_TX_tlast  : out std_logic;

    -------- PORT 5 --------
    -- AXI4-Stream Receiver --
    PE_RX_tdata  : in std_logic_vector(7 downto 0);
    PE_RX_tvalid : in std_logic;
    PE_RX_tlast  : in std_logic;
    PE_RX_tready : out std_logic;
    -- AXI-4 Stream Transmitter to Packet-Aware Ring Buffer --
    PE_TX_tdata  : out std_logic_vector(7 downto 0);
    PE_TX_tvalid : out std_logic;
    PE_TX_tlast  : out std_logic
  );
end axi4s_interconnect;

architecture arch of axi4s_interconnect is

  -- Port Type
  type port_t is (
    NO_PORT,
    PORT_A,
    PORT_B,
    PORT_C,
    PORT_D,
    PORT_E
  );

  -- Registered state signals
  signal last_port   : port_t := NO_PORT;
  signal active_port : port_t := NO_PORT;
  
  -- Internal registered outputs
  signal PA_TX_tdata_reg  : std_logic_vector(7 downto 0) := (others => '0');
  signal PA_TX_tvalid_reg : std_logic := '0';
  signal PA_TX_tlast_reg  : std_logic := '0';
  
  signal PB_TX_tdata_reg  : std_logic_vector(7 downto 0) := (others => '0');
  signal PB_TX_tvalid_reg : std_logic := '0';
  signal PB_TX_tlast_reg  : std_logic := '0';
  
  signal PC_TX_tdata_reg  : std_logic_vector(7 downto 0) := (others => '0');
  signal PC_TX_tvalid_reg : std_logic := '0';
  signal PC_TX_tlast_reg  : std_logic := '0';
  
  signal PD_TX_tdata_reg  : std_logic_vector(7 downto 0) := (others => '0');
  signal PD_TX_tvalid_reg : std_logic := '0';
  signal PD_TX_tlast_reg  : std_logic := '0';
  
  signal PE_TX_tdata_reg  : std_logic_vector(7 downto 0) := (others => '0');
  signal PE_TX_tvalid_reg : std_logic := '0';
  signal PE_TX_tlast_reg  : std_logic := '0';

begin

  -- Assign registered outputs
  PA_TX_tdata  <= PA_TX_tdata_reg;
  PA_TX_tvalid <= PA_TX_tvalid_reg;
  PA_TX_tlast  <= PA_TX_tlast_reg;
  
  PB_TX_tdata  <= PB_TX_tdata_reg;
  PB_TX_tvalid <= PB_TX_tvalid_reg;
  PB_TX_tlast  <= PB_TX_tlast_reg;
  
  PC_TX_tdata  <= PC_TX_tdata_reg;
  PC_TX_tvalid <= PC_TX_tvalid_reg;
  PC_TX_tlast  <= PC_TX_tlast_reg;
  
  PD_TX_tdata  <= PD_TX_tdata_reg;
  PD_TX_tvalid <= PD_TX_tvalid_reg;
  PD_TX_tlast  <= PD_TX_tlast_reg;
  
  PE_TX_tdata  <= PE_TX_tdata_reg;
  PE_TX_tvalid <= PE_TX_tvalid_reg;
  PE_TX_tlast  <= PE_TX_tlast_reg;

-- Port Contention Controller (Synchronous) --
p_contention_controller : process (clk)
begin
  if rising_edge(clk) then
    if resetn = '0' then
      active_port <= NO_PORT;
      last_port   <= NO_PORT;
    else
      if active_port /= NO_PORT then
        -- Check for normal packet completion or aborted packet
        case active_port is
          when PORT_A =>
            if (PA_RX_tvalid = '1' and PA_RX_tlast = '1') or (PA_RX_tvalid = '0') then
              active_port <= NO_PORT;
            end if;
          when PORT_B =>
            if (PB_RX_tvalid = '1' and PB_RX_tlast = '1') or (PB_RX_tvalid = '0') then
              active_port <= NO_PORT;
            end if;
          when PORT_C =>
            if (PC_RX_tvalid = '1' and PC_RX_tlast = '1') or (PC_RX_tvalid = '0') then
              active_port <= NO_PORT;
            end if;
          when PORT_D =>
            if (PD_RX_tvalid = '1' and PD_RX_tlast = '1') or (PD_RX_tvalid = '0') then
              active_port <= NO_PORT;
            end if;
          when PORT_E =>
            if (PE_RX_tvalid = '1' and PE_RX_tlast = '1') or (PE_RX_tvalid = '0') then
              active_port <= NO_PORT;
            end if;
          when others =>
            active_port <= NO_PORT;
        end case;
      else
        -- Round robin arbitration
        case last_port is
          when NO_PORT | PORT_E =>
            if PA_RX_tvalid = '1' then
              active_port <= PORT_A;
              last_port   <= PORT_A;
            elsif PB_RX_tvalid = '1' then
              active_port <= PORT_B;
              last_port   <= PORT_B;
            elsif PC_RX_tvalid = '1' then
              active_port <= PORT_C;
              last_port   <= PORT_C;
            elsif PD_RX_tvalid = '1' then
              active_port <= PORT_D;
              last_port   <= PORT_D;
            elsif PE_RX_tvalid = '1' then
              active_port <= PORT_E;
              last_port   <= PORT_E;
            end if;
          when PORT_A =>
            if PB_RX_tvalid = '1' then
              active_port <= PORT_B;
              last_port   <= PORT_B;
            elsif PC_RX_tvalid = '1' then
              active_port <= PORT_C;
              last_port   <= PORT_C;
            elsif PD_RX_tvalid = '1' then
              active_port <= PORT_D;
              last_port   <= PORT_D;
            elsif PE_RX_tvalid = '1' then
              active_port <= PORT_E;
              last_port   <= PORT_E;
            elsif PA_RX_tvalid = '1' then
              active_port <= PORT_A;
              last_port   <= PORT_A;
            end if;
          when PORT_B =>
            if PC_RX_tvalid = '1' then
              active_port <= PORT_C;
              last_port   <= PORT_C;
            elsif PD_RX_tvalid = '1' then
              active_port <= PORT_D;
              last_port   <= PORT_D;
            elsif PE_RX_tvalid = '1' then
              active_port <= PORT_E;
              last_port   <= PORT_E;
            elsif PA_RX_tvalid = '1' then
              active_port <= PORT_A;
              last_port   <= PORT_A;
            elsif PB_RX_tvalid = '1' then
              active_port <= PORT_B;
              last_port   <= PORT_B;
            end if;
          when PORT_C =>
            if PD_RX_tvalid = '1' then
              active_port <= PORT_D;
              last_port   <= PORT_D;
            elsif PE_RX_tvalid = '1' then
              active_port <= PORT_E;
              last_port   <= PORT_E;
            elsif PA_RX_tvalid = '1' then
              active_port <= PORT_A;
              last_port   <= PORT_A;
            elsif PB_RX_tvalid = '1' then
              active_port <= PORT_B;
              last_port   <= PORT_B;
            elsif PC_RX_tvalid = '1' then
              active_port <= PORT_C;
              last_port   <= PORT_C;
            end if;
          when PORT_D =>
            if PE_RX_tvalid = '1' then
              active_port <= PORT_E;
              last_port   <= PORT_E;
            elsif PA_RX_tvalid = '1' then
              active_port <= PORT_A;
              last_port   <= PORT_A;
            elsif PB_RX_tvalid = '1' then
              active_port <= PORT_B;
              last_port   <= PORT_B;
            elsif PC_RX_tvalid = '1' then
              active_port <= PORT_C;
              last_port   <= PORT_C;
            elsif PD_RX_tvalid = '1' then
              active_port <= PORT_D;
              last_port   <= PORT_D;
            end if;
        end case;
      end if;
    end if;
  end if;
end process;

  -- Generate tready signals (Combinational) --
  -- Only the active port should see tready = '1'
  PA_RX_tready <= '1' when active_port = PORT_A else '0';
  PB_RX_tready <= '1' when active_port = PORT_B else '0';
  PC_RX_tready <= '1' when active_port = PORT_C else '0';
  PD_RX_tready <= '1' when active_port = PORT_D else '0';
  PE_RX_tready <= '1' when active_port = PORT_E else '0';

  -- Output Controller (Synchronous) --
  p_output_controller : process (clk)
  begin
    if rising_edge(clk) then
      if resetn = '0' then
        PA_TX_tdata_reg  <= (others => '0');
        PA_TX_tvalid_reg <= '0';
        PA_TX_tlast_reg  <= '0';
        
        PB_TX_tdata_reg  <= (others => '0');
        PB_TX_tvalid_reg <= '0';
        PB_TX_tlast_reg  <= '0';
        
        PC_TX_tdata_reg  <= (others => '0');
        PC_TX_tvalid_reg <= '0';
        PC_TX_tlast_reg  <= '0';
        
        PD_TX_tdata_reg  <= (others => '0');
        PD_TX_tvalid_reg <= '0';
        PD_TX_tlast_reg  <= '0';
        
        PE_TX_tdata_reg  <= (others => '0');
        PE_TX_tvalid_reg <= '0';
        PE_TX_tlast_reg  <= '0';
      else
        -- Route active port to all other ports
        case active_port is
          when PORT_A =>
            PA_TX_tdata_reg  <= (others => '0');
            PA_TX_tvalid_reg <= '0';
            PA_TX_tlast_reg  <= '0';

            PB_TX_tdata_reg  <= PA_RX_tdata;
            PB_TX_tvalid_reg <= PA_RX_tvalid;
            PB_TX_tlast_reg  <= PA_RX_tlast;

            PC_TX_tdata_reg  <= PA_RX_tdata;
            PC_TX_tvalid_reg <= PA_RX_tvalid;
            PC_TX_tlast_reg  <= PA_RX_tlast;

            PD_TX_tdata_reg  <= PA_RX_tdata;
            PD_TX_tvalid_reg <= PA_RX_tvalid;
            PD_TX_tlast_reg  <= PA_RX_tlast;

            PE_TX_tdata_reg  <= PA_RX_tdata;
            PE_TX_tvalid_reg <= PA_RX_tvalid;
            PE_TX_tlast_reg  <= PA_RX_tlast;

          when PORT_B =>
            PA_TX_tdata_reg  <= PB_RX_tdata;
            PA_TX_tvalid_reg <= PB_RX_tvalid;
            PA_TX_tlast_reg  <= PB_RX_tlast;

            PB_TX_tdata_reg  <= (others => '0');
            PB_TX_tvalid_reg <= '0';
            PB_TX_tlast_reg  <= '0';

            PC_TX_tdata_reg  <= PB_RX_tdata;
            PC_TX_tvalid_reg <= PB_RX_tvalid;
            PC_TX_tlast_reg  <= PB_RX_tlast;

            PD_TX_tdata_reg  <= PB_RX_tdata;
            PD_TX_tvalid_reg <= PB_RX_tvalid;
            PD_TX_tlast_reg  <= PB_RX_tlast;

            PE_TX_tdata_reg  <= PB_RX_tdata;
            PE_TX_tvalid_reg <= PB_RX_tvalid;
            PE_TX_tlast_reg  <= PB_RX_tlast;

          when PORT_C =>
            PA_TX_tdata_reg  <= PC_RX_tdata;
            PA_TX_tvalid_reg <= PC_RX_tvalid;
            PA_TX_tlast_reg  <= PC_RX_tlast;

            PB_TX_tdata_reg  <= PC_RX_tdata;
            PB_TX_tvalid_reg <= PC_RX_tvalid;
            PB_TX_tlast_reg  <= PC_RX_tlast;

            PC_TX_tdata_reg  <= (others => '0');
            PC_TX_tvalid_reg <= '0';
            PC_TX_tlast_reg  <= '0';

            PD_TX_tdata_reg  <= PC_RX_tdata;
            PD_TX_tvalid_reg <= PC_RX_tvalid;
            PD_TX_tlast_reg  <= PC_RX_tlast;

            PE_TX_tdata_reg  <= PC_RX_tdata;
            PE_TX_tvalid_reg <= PC_RX_tvalid;
            PE_TX_tlast_reg  <= PC_RX_tlast;

          when PORT_D =>
            PA_TX_tdata_reg  <= PD_RX_tdata;
            PA_TX_tvalid_reg <= PD_RX_tvalid;
            PA_TX_tlast_reg  <= PD_RX_tlast;

            PB_TX_tdata_reg  <= PD_RX_tdata;
            PB_TX_tvalid_reg <= PD_RX_tvalid;
            PB_TX_tlast_reg  <= PD_RX_tlast;

            PC_TX_tdata_reg  <= PD_RX_tdata;
            PC_TX_tvalid_reg <= PD_RX_tvalid;
            PC_TX_tlast_reg  <= PD_RX_tlast;

            PD_TX_tdata_reg  <= (others => '0');
            PD_TX_tvalid_reg <= '0';
            PD_TX_tlast_reg  <= '0';

            PE_TX_tdata_reg  <= PD_RX_tdata;
            PE_TX_tvalid_reg <= PD_RX_tvalid;
            PE_TX_tlast_reg  <= PD_RX_tlast;

          when PORT_E =>
            PA_TX_tdata_reg  <= PE_RX_tdata;
            PA_TX_tvalid_reg <= PE_RX_tvalid;
            PA_TX_tlast_reg  <= PE_RX_tlast;

            PB_TX_tdata_reg  <= PE_RX_tdata;
            PB_TX_tvalid_reg <= PE_RX_tvalid;
            PB_TX_tlast_reg  <= PE_RX_tlast;

            PC_TX_tdata_reg  <= PE_RX_tdata;
            PC_TX_tvalid_reg <= PE_RX_tvalid;
            PC_TX_tlast_reg  <= PE_RX_tlast;

            PD_TX_tdata_reg  <= PE_RX_tdata;
            PD_TX_tvalid_reg <= PE_RX_tvalid;
            PD_TX_tlast_reg  <= PE_RX_tlast;

            PE_TX_tdata_reg  <= (others => '0');
            PE_TX_tvalid_reg <= '0';
            PE_TX_tlast_reg  <= '0';

          when NO_PORT =>
            PA_TX_tdata_reg  <= (others => '0');
            PA_TX_tvalid_reg <= '0';
            PA_TX_tlast_reg  <= '0';

            PB_TX_tdata_reg  <= (others => '0');
            PB_TX_tvalid_reg <= '0';
            PB_TX_tlast_reg  <= '0';

            PC_TX_tdata_reg  <= (others => '0');
            PC_TX_tvalid_reg <= '0';
            PC_TX_tlast_reg  <= '0';

            PD_TX_tdata_reg  <= (others => '0');
            PD_TX_tvalid_reg <= '0';
            PD_TX_tlast_reg  <= '0';

            PE_TX_tdata_reg  <= (others => '0');
            PE_TX_tvalid_reg <= '0';
            PE_TX_tlast_reg  <= '0';

        end case;
      end if;
    end if;
  end process;
end architecture;
