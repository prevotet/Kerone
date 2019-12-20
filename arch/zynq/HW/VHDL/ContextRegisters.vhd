library ieee;
use ieee.std_logic_1164.all;

entity ContextRegisters is
generic(
  NUM_LIN: integer := 4; -- number of lines in the matrix of registers
  NUM_COL: integer := 4; -- number of columns in the matrix of registers
  DATA_WIDTH: integer := 16);
port(
  I_CLK: in std_logic;
  I_RESET: in std_logic;
  -- Line enable that enable all registers within a line
  I_LINE_EN: in std_logic_vector(NUM_LIN-1 downto 0);
  -- data coming from the IP in parallel
  I_DATA: in  std_logic_vector(NUM_LIN*DATA_WIDTH - 1 downto 0);
  -- data coming from memory in serial
  I_DATA_SIN: in std_logic_vector(DATA_WIDTH - 1 downto 0);
  -- Parallel/Serial mode
  I_DATA_PS: in std_logic;
  -- Read/Write mode
  I_RW: in std_logic;
  -- Output of the context registers
  O_DATA: out std_logic_vector(NUM_LIN*DATA_WIDTH - 1 downto 0));
end entity;


architecture one of ContextRegisters is

component shift_reg is
generic (
NUM_COL: integer := 4;
DATA_WIDTH : integer := 16); 

 port (
 I_CLK: in std_logic;
 I_RESET: in std_logic;
 I_ENABLE: in std_logic;
 I_RW: in std_logic;
 I_SIN: in std_logic_vector  (DATA_WIDTH-1 downto 0);
 O_SOUT: out std_logic_vector(DATA_WIDTH-1 downto 0)
 );
 end component;
 
 
signal data_in: std_logic_vector(NUM_LIN*DATA_WIDTH - 1 downto 0); 
 
begin

---------------------------------------------------------------------------------------------------
-- If I_DATA_PS =1 then Parallel Mode. The registers are filled in parallel for each line
-- if I_DATA_PS =0 the serial Mode. The regiters are filled in serial from the I_DATA_SIN input 
-- coming from the memory
gen:for i in 0 to NUM_LIN-1 generate

with  I_DATA_PS select
data_in(DATA_WIDTH*(i+1)-1 downto DATA_WIDTH*i) <= I_DATA(DATA_WIDTH*(i+1)-1 downto DATA_WIDTH*i) when '1', 
I_DATA_SIN when '0', 
I_DATA_SIN when others;

end generate;




 
gen_line:for i in 0 to NUM_LIN-1 generate
   shift_reg_i: shift_reg
   generic map(
     NUM_COL=>NUM_COL,
     DATA_WIDTH=> DATA_WIDTH)
     port map(
       I_CLK=>I_CLK,
       I_RESET=>I_RESET,
       I_ENABLE=>I_LINE_EN(i),
       I_RW=>I_RW,
       I_SIN=> data_in(DATA_WIDTH*(i+1)-1 downto DATA_WIDTH*i),
       O_SOUT=> O_DATA(DATA_WIDTH*(i+1)-1 downto DATA_WIDTH*i)
       );
end generate;
end one;       
     
 
 

 