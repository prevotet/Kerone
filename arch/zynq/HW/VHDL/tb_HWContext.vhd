library ieee;
use ieee.std_logic_1164.all;

entity tb_HWContext is
generic(
NUM_LIN: integer:=3;
NUM_COL: integer:=4;
NUM_COL_LOG2: integer:=2;
ADDR_WIDTH: integer :=4;
DATA_WIDTH: integer :=8 
);
end entity tb_HWContext;

architecture test of  tb_HWContext is



component HWContext is
generic(
NUM_LIN: integer:=3;
NUM_COL: integer:=4;
NUM_COL_LOG2: integer:=2;
ADDR_WIDTH: integer :=4;
DATA_WIDTH: integer :=8 
);
port(
I_CLK: in std_logic;
I_RESET: in std_logic;
I_CMD: in std_logic_vector(3 downto 0);
I_ADDR_IN: in std_logic_vector(ADDR_WIDTH-1 downto 0);
I_IP_DATA: in std_logic_vector(NUM_LIN*DATA_WIDTH-1 downto 0);
I_MEM_DATA_IN : in std_logic_vector(DATA_WIDTH-1 downto 0);

O_IP_SEL_COL: out std_logic_vector(NUM_COL_LOG2-1 downto 0);
O_IP_RW: out std_logic;
O_IP_DATA: out std_logic_vector(NUM_LIN*DATA_WIDTH-1 downto 0);
O_MEM_ADDR_OUT: out std_logic_vector(ADDR_WIDTH-1 downto 0);
O_MEM_DATA_OUT: out std_logic_vector(DATA_WIDTH-1 downto 0) 
);
end component;

constant CLK_PERIOD:time:=20ns;
signal clk: std_logic:='1';
signal reset: std_logic;
signal cmd: std_logic_vector(3 downto 0); 
signal addr_in: std_logic_vector(ADDR_WIDTH-1 downto 0);
signal data_ip_i: std_logic_vector(NUM_LIN*DATA_WIDTH-1 downto 0);
signal data_ip_o: std_logic_vector(NUM_LIN*DATA_WIDTH-1 downto 0);
signal mem_data_in:std_logic_vector(DATA_WIDTH-1 downto 0);
signal mem_addr_out:std_logic_vector(ADDR_WIDTH-1 downto 0);
signal mem_data_out:std_logic_vector(DATA_WIDTH-1 downto 0);
signal ip_sel_col: std_logic_vector(NUM_COL_LOG2-1 downto 0);
signal ip_rw: std_logic;
begin
  
clk<= not clk after (CLK_PERIOD/2); 
 
  
DUT:HWContext 
generic map(
NUM_LIN=>NUM_LIN,
NUM_COL=>NUM_COL,
ADDR_WIDTH=>ADDR_WIDTH,
DATA_WIDTH=>DATA_WIDTH 
)
port map(
I_CLK=> clk,
I_RESET=>reset,
I_CMD=>cmd,
I_ADDR_IN=> addr_in,
I_IP_DATA=> data_ip_i,
I_MEM_DATA_IN=> mem_data_in,


O_IP_SEL_COL=>ip_sel_col,
O_IP_RW=> ip_rw,
O_IP_DATA=> data_ip_o,

O_MEM_ADDR_OUT=>mem_addr_out,
O_MEM_DATA_OUT=>mem_data_out
);


process
begin
    
reset<='1';
wait for CLK_PERIOD;

reset<='0';
wait for CLK_PERIOD;

CMD<="0010";  -- READ FROM MEMORY
wait for CLK_PERIOD; 

CMD<="0000"; 
addr_in<="0010";
wait for CLK_PERIOD; 


wait for CLK_PERIOD; 


data_ip_i<=x"001020";
wait for CLK_PERIOD; 

data_ip_i<=x"011121";
wait for CLK_PERIOD; 

data_ip_i<=x"021222";
wait for CLK_PERIOD; 

data_ip_i<=x"031323";
wait for CLK_PERIOD; 

for i in 0 to 20 loop
wait for CLK_PERIOD; 
end loop;
end process;

end test;