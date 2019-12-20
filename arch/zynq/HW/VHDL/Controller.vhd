library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;
use ieee.numeric_Std.all;

entity Controller is
generic(
NUM_COL: integer :=4; 
NUM_COL_LOG2: integer :=2;
NUM_LIN: integer :=3);
 
port(
  I_CLK: in std_logic;
  I_RESET: in std_logic;
  I_CMD: in std_logic_vector(3 downto 0);
  O_ADDR_GEN_EN: out std_logic;
  O_ADDR_LOAD: out std_logic;
  O_CR_RW: out std_logic;
  O_PS: out std_logic;
  O_IP_SEL_COL: out std_logic_vector(NUM_COL_LOG2 -1 downto 0);
  O_IP_RW: out std_logic;
  O_CR_LINE_EN: out std_logic_vector(NUM_LIN-1 downto 0)
  );
end entity;

architecture one of Controller is

type state is (FETCH_CMD, RESET, MEM_STORE_LOAD, MEM_STORE_ENABLE1, MEM_STORE_ENABLE2, MEM_STORE_ENABLE3, MEM_STORE_ENABLE4 ,MEM_STORE_FINISH,
REG_STORE0, REG_STORE1, REG_STORE2, REG_STORE_FINISH);

constant CMD_MEM_STORE: std_logic_vector(3 downto 0):="0001";
constant CMD_REG_STORE: std_logic_vector(3 downto 0):="0010";

signal current_state:state;  
signal next_state: state;

signal col: integer:=0;
signal lig: integer:=0;
signal data_shiftreg: std_logic_vector(NUM_LIN downto 0);
signal load_shiftreg: std_logic;


signal en_col: std_logic;
signal en_lin: std_logic;
signal reset_lin: std_logic;
signal reset_col:std_logic;

signal COUNT_IP_COL_EN: std_logic;
signal IP_COL: integer:=0;
signal IP_SEL_COL:  std_logic_vector(NUM_COL_LOG2 -1 downto 0);

begin


--process(I_CLK,I_RESET,clr_cmd_reg)
--begin
 -- if clr_cmd_reg='1' then
--    cmd_reg<=(others=>'0');
--  elsif rising_edge(I_CLK) then
--    cmd_reg<=I_CMD;
 -- end if;
--end process;




reg_state: process(I_CLK,I_RESET)
begin
if (I_RESET='1') then
current_state<= RESET;
elsif (rising_edge(I_CLK)) then  
  current_state<= next_state;
end if;
end process;

------------------------------------------------------------------
process(current_state,I_CMD,col,lig,ip_col)
begin
case current_state is 


when RESET=>    
next_state<= FETCH_CMD;


when FETCH_CMD=> 
case I_CMD is 
when CMD_MEM_STORE => next_state<= MEM_STORE_LOAD;
when CMD_REG_STORE => next_state<= REG_STORE0;

when others => next_state<=FETCH_CMD;
end case;
  

------------------------------------------------------  
when REG_STORE0=>
next_state<= REG_STORE1;
------------------------------------------------------
when REG_STORE1=>
next_state<=REG_STORE2;
------------------------------------------------------
when REG_STORE2=>
if (ip_col=NUM_COL) then
next_state<= REG_STORE_FINISH;
else 
next_state<=REG_STORE2;
end if;
------------------------------------------------------

when REG_STORE_FINISH=>
next_state<=RESET;
 -------------------------------------------------------

 
 
 
 when MEM_STORE_LOAD=>   
next_state<=MEM_STORE_ENABLE1;

when MEM_STORE_ENABLE1=>
next_state<=MEM_STORE_ENABLE2;

 
when MEM_STORE_ENABLE2=>
if (col=NUM_COL-1) then
	if (lig=NUM_LIN) then
	next_state<=MEM_STORE_FINISH;
	else
	next_state<=MEM_STORE_ENABLE1;
	end if;
else
next_state<=MEM_STORE_ENABLE2; 
end if; 

when MEM_STORE_FINISH=> next_state<= RESET;
when others=> NULL;
end case;
end process;



------------------------------------------------------
process(current_state)
begin
case current_state is
------------------------------------------------------
-- Reset state by default
when RESET=>
reset_lin<='1';
reset_col<='1';
EN_LIN<='0';
EN_COL<='0';
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='0';
O_IP_RW<='1';
O_PS<='1';
O_CR_RW<='1';
O_CR_LINE_EN<=(others=>'0');
COUNT_IP_COL_EN<='0';

--------------------------------------------------------------------------
-- Fetch command state to determine what to do
-- Store registers' context into memory
-- Store IP registers into context registers
when FETCH_CMD=> 
reset_lin<='0';
reset_col<='0';
EN_COL<='0';
EN_LIN<='0';
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='0';
O_IP_RW<='1';
O_PS<='1';
O_CR_RW<='1';
O_CR_LINE_EN<=(others=>'0');
COUNT_IP_COL_EN<='0';
---------------------------------------------------------------------------
-- Store IP registers into context registers
when REG_STORE0=>
reset_lin<='0';
reset_col<='0';
EN_COL<='0';
EN_LIN<='0';
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='0';
O_IP_RW<='1';
O_PS<='1';
O_CR_RW<='1';
O_CR_LINE_EN<=(others=>'0');
COUNT_IP_COL_EN<='1';
-----------------------------------------
when REG_STORE1=>
reset_lin<='0';
reset_col<='0';
EN_COL<='0';
EN_LIN<='0';
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='0';
O_IP_RW<='1';
O_PS<='1';
O_CR_RW<='1';
O_CR_LINE_EN<=(others=>'0');
COUNT_IP_COL_EN<='1';
----------------------------------------
when REG_STORE2=>
reset_lin<='0';
reset_col<='0';
EN_COL<='0';
EN_LIN<='0';
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='0';
O_IP_RW<='1';
O_PS<='1';
O_CR_RW<='0';
O_CR_LINE_EN<=(others=>'1');
COUNT_IP_COL_EN<='1';
-----------------------------------------
when REG_STORE_FINISH=>
reset_lin<='0';
reset_col<='0';
EN_COL<='0';
EN_LIN<='0';
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='0';
O_IP_RW<='1';
O_PS<='1';
O_CR_RW<='0';
O_CR_LINE_EN<=(others=>'1');
COUNT_IP_COL_EN<='0';
---------------------------------------------------------------------------
-- On-chip Memory Storage
-- To store the registers context into on-chip memory
---------------------------------------------------------------------------
-- LOAD the first address of the memory to start storage from this address
when MEM_STORE_LOAD=> 
reset_lin<='0';
reset_col<='0';
EN_LIN<='0';
EN_COL<='0';
load_shiftreg<='1';
O_ADDR_LOAD<='1';
O_ADDR_GEN_EN<='0';
O_IP_RW<='1';
O_PS<='0';
O_CR_RW<='1';
O_CR_LINE_EN<=(others=>'0');
COUNT_IP_COL_EN<='0';
--------------------------------------------------------------------------
when MEM_STORE_ENABLE1=>
reset_lin<='0';
reset_col<='0';
EN_LIN<='1';
EN_COL<='1';
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='1';
O_IP_RW<='1';
O_PS<='0';
O_CR_RW<='1';
O_CR_LINE_EN<=(others=>'0');
COUNT_IP_COL_EN<='0';
--------------------------------------------------------------------------
when MEM_STORE_ENABLE2=> 
reset_lin<='0';
reset_col<='0';
EN_LIN<='0';
EN_COL<='1';  
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='1';
O_IP_RW<='1';
O_PS<='0';
O_CR_RW<='1';
O_CR_LINE_EN<=(others=>'0');
COUNT_IP_COL_EN<='0';

when MEM_STORE_ENABLE3=> 
reset_lin<='0';
reset_col<='0';
EN_LIN<='0';
EN_COL<='1';  
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='1';
O_IP_RW<='1';
O_PS<='0';
O_CR_RW<='1';
O_CR_LINE_EN<=data_shiftreg(NUM_LIN-1 downto 0);
COUNT_IP_COL_EN<='0';

when MEM_STORE_ENABLE4=> 
reset_lin<='0';
reset_col<='0';
EN_LIN<='0';
EN_COL<='1';  
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='1';
O_IP_RW<='1';
O_PS<='0';
O_CR_RW<='1';
O_CR_LINE_EN<=data_shiftreg(NUM_LIN-1 downto 0);
COUNT_IP_COL_EN<='0';
--------------------------------------------------------------------------
  
when MEM_STORE_FINISH=>
reset_lin<='0';
reset_col<='0';
EN_LIN<='0';
EN_COL<='0';  
load_shiftreg<='0';
O_ADDR_LOAD<='0';
O_ADDR_GEN_EN<='1';
O_IP_RW<='1';
O_PS<='0';
O_CR_RW<='1';
O_CR_LINE_EN<=data_shiftreg(NUM_LIN-1 downto 0);
COUNT_IP_COL_EN<='0';

when others=> 

end case;
end process;  
---------------------------------------------------------------------------
-- Column counter for the context registers
counter_col: process(I_CLK,I_RESET,reset_col)
begin
if (I_RESET='1' or reset_col='1') then
col<=0;
elsif (rising_edge(I_CLK)) then  
        if (col=NUM_COL) then col<=1;
		elsif en_col='1' then
            col<= col+1;
			
            end if;
end if;
end process; 
  
--------------------------------------------------------------------------
-- Line counter for the context registers
counter_lin: process(I_CLK,I_RESET,reset_lin)
begin
if (I_RESET='1' or reset_lin='1') then
lig<=0;
elsif (rising_edge(I_CLK)) then  
        if (en_lin='1') then
           lig<= lig +1;
        end if;
end if;  
end process;


  
--------------------------------------------------------------------------
 -- Shift register to select one line of the context registers at a time
 process(I_RESET,I_CLK)
 begin
 if I_RESET='1' then
 data_shiftreg<=(others=>'0');
 elsif rising_edge(I_CLK) then
	if (load_shiftreg='1') then
	data_shiftreg(NUM_LIN)<= '1';
	data_shiftreg(NUM_LIN-1 downto 0)<= (others=>'0');
	elsif EN_LIN='1' then
	data_shiftreg<= '0' & data_shiftreg(NUM_LIN downto 1);
	end if;
end if;
end process;

--------------------------------------------------------------------------
-- col counter to select the col on the IP side
counter_IP_col: process(I_CLK,I_RESET)
begin
if (I_RESET='1' or reset_col='1') then
IP_COL<=0;
elsif (rising_edge(I_CLK)) then  
        if (COUNT_IP_COL_EN='1') then
           IP_COL<= IP_COL +1;
        end if;
end if;  
end process;

--------------------------------------------------------------------------

IP_SEL_COL<= std_logic_vector( to_unsigned(IP_COL,O_IP_SEL_COL'length));
O_IP_SEL_COL<=IP_SEL_COL;



end one;
  