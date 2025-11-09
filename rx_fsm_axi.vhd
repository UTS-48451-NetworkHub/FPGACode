library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rx_fsm_AXI is
  port (
    --mandatory
    clk_in : in std_logic; --!100MHz clock
    resetn : in std_logic; --! active low reset

    --control
    AXI_en       : in std_logic; --! enable AXI transmitter
    tready       : in std_logic; --! interconnect ready to receive packet
    packet_valid : in std_logic; --! packet is valid and can be read
    size_in      : in std_logic_vector(15 downto 0); --! size of packet
    fcs_fail     : in std_logic; --! fcs fail
    tvalid       : out std_logic := '0'; --!transmitting data is valid
    tlast        : out std_logic := '0'; --! last packet being transmitted
    packet_ready : out std_logic := '0'; --! packet is ready to be received by AXI transmitter

    --data
    addr_in : in std_logic_vector(10 downto 0) --! Address read by Address reader
  );

end rx_fsm_AXI;

architecture Behavioral of rx_fsm_axi is

  type AXI_state is(

  AXI_IDLE, --! awaiting packet
  AXI_SIZE, --! pr packet is valid -> packet size is received
  AXI_DATA, --! Data transmission
  AXI_LAST, --! Last byte of data transmission
  AXI_WAIT --! wait for tready to be set high

  );

  signal current_state, next_state : AXI_state;

  signal size_buf : std_logic_vector(10 downto 0) := (others => '0'); --! buffer to hold packet size

  signal counter_en : std_logic := '0'; --! timeout counter enable
  --! counter for timeout
  signal counter : unsigned (12 downto 0) := (others => '0');  
  

begin

  sequential : process (clk_in, resetn)
  begin
    if resetn = '0' then
      current_state <= AXI_IDLE;
      size_buf <= (others => '0');
    elsif rising_edge(clk_in) then

      --! timeout logic for fcs fail
      if counter_en = '1' then
        if (counter = 8191) then
          counter <= (others => '0');
          current_state <= AXI_IDLE;
        else
          counter <= counter + 1;
          current_state <= next_state;
        end if;
      else 
        current_state <= next_state;
      end if;      

      if current_state = AXI_IDLE and next_state = AXI_SIZE then
        size_buf <= std_logic_vector(unsigned(size_in(10 downto 0)) + 1); --! receive size of packet
      end if;

      if current_state = AXI_DATA and next_state = AXI_WAIT then
        size_buf <= (others => '0'); --! reset size
      end if;

      if current_state /= AXI_IDLE then
        counter_en <= '1';
      else
        counter_en <= '0';
      end if;

    end if;
  end process;

  AXI_fsm : process (packet_valid, tready, AXI_en, addr_in, current_state, size_buf, fcs_fail)
  begin

    --! Default Assignment
    next_state <= current_state;

    case current_state is

      when AXI_IDLE =>
        if packet_valid = '1' then
          next_state <= AXI_SIZE;
        end if;

      when AXI_SIZE =>
        if AXI_en = '1' then
          next_state <= AXI_DATA;
        elsif fcs_fail = '1' then
          next_state <= AXI_WAIT;
        end if;

      when AXI_DATA =>
        if addr_in = size_buf then
          next_state <= AXI_LAST;
        end if;

      when AXI_LAST =>
        if current_state = AXI_LAST then
          next_state <= AXI_WAIT;
        end if;

      when AXI_WAIT =>
        if tready = '1' then
          next_state <= AXI_IDLE;
        end if;

    end case;
  end process;

  --! direct state outputs

  with current_state select
    packet_ready <=
    '1' when AXI_IDLE, --! ready to receive when transmission complete
    '0' when others;

  with current_state select
    tlast <= 
    '1' when AXI_LAST, --! when last packet tlast set high
    '0' when others;

  tvalid <= AXI_en; --! tvalid set directly from active AXI transmission

end Behavioral;
