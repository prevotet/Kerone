library ieee;
use ieee.std_logic_1164.all;

entity HWContext is
generic(
NUM_LIN: integer:=3;
NUM_COL: integer:=4;
NUM_COL_LOG2: integer :=2;
ADDR_WIDTH: integer :=8;
DATA_WIDTH: integer :=8 
);
port(
-- Clk signal
I_CLK: in std_logic;	
-- Reset signal												
I_RESET: in std_logic;
-- Input command
I_CMD: in std_logic_vector(3 downto 0);
-- Addr_in contains the first address to start storage
I_ADDR_IN: in std_logic_vector(ADDR_WIDTH-1 downto 0);
-- Data coming from the IP for storage into context registers
I_IP_DATA: in std_logic_vector(NUM_LIN*DATA_WIDTH-1 downto 0);
-- Data coming from memory for storage into context registers
I_MEM_DATA_IN : in std_logic_vector(DATA_WIDTH-1 downto 0);
-- Col selector for the IP
O_IP_SEL_COL: out std_logic_vector(NUM_COL_LOG2-1 downto 0);
-- IP Read/write mode
O_IP_RW: out std_logic;
-- Data output to restore the state of the IP
O_IP_DATA: out std_logic_vector(NUM_LIN*DATA_WIDTH-1 downto 0);
-- Memory address
O_MEM_ADDR_OUT: out std_logic_vector(ADDR_WIDTH-1 downto 0);
-- Memory data to store
O_MEM_DATA_OUT: out std_logic_vector(DATA_WIDTH-1 downto 0) 
);
end HWContext;

architecture one of HWContext is

component Controller is
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
end component;


component AddressGenerator is
generic(
  ADDR_WIDTH: integer := 8);
port(
  I_CLK: in std_logic;
  I_RESET: in std_logic;
  I_ADDR_LOAD: in std_logic;
  I_ADDR_IN: in std_logic_vector(ADDR_WIDTH-1 downto 0);
  I_ENABLE: in std_logic;
  O_ADDR_OUT: out std_logic_vector(ADDR_WIDTH-1 downto 0));
end component;

component ContextRegisters is
generic(
  NUM_LIN: integer := 4;
  NUM_COL: integer := 4;
  DATA_WIDTH: integer := 16);
port(
  I_CLK: in std_logic;
  I_RESET: in std_logic;
  I_LINE_EN: in std_logic_vector(NUM_LIN-1 downto 0);
  I_DATA: in  std_logic_vector(NUM_LIN*DATA_WIDTH - 1 downto 0);
  I_DATA_SIN: in std_logic_vector(DATA_WIDTH - 1 downto 0);
  I_DATA_PS: in std_logic;
  I_RW: in std_logic;
  O_DATA: out std_logic_vector(NUM_LIN*DATA_WIDTH - 1 downto 0));
end component;

--------------------------------------------------------------------------
-- Signal declarations
signal addr_gen_en: std_logic;
signal addr_gen_load: std_logic;
signal lin_en: std_logic_vector(NUM_LIN-1 downto 0);

signal ps: std_logic;
signal cr_rw: std_logic;
signal registers_out: std_logic_vector(NUM_LIN*DATA_WIDTH - 1 downto 0);

--------------------------------------------------------------------------

begin
  
  
controller0: Controller 
generic map(
NUM_COL=>NUM_COL,
NUM_COL_LOG2=>NUM_COL_LOG2,
NUM_LIN=>NUM_LIN)
 
port map(
  I_CLK=>I_CLK,
  I_RESET=> I_RESET,
  I_CMD=> I_CMD,
  O_ADDR_GEN_EN=>addr_gen_en,
  O_ADDR_LOAD=>addr_gen_load,
  O_CR_RW=> cr_rw,
  O_PS=>ps,
  O_IP_SEL_COL=> O_IP_SEL_COL,
  O_IP_RW=> O_IP_RW,
  O_CR_LINE_EN=> lin_en
  );

----------------------------------------------------------
AddrGen: AddressGenerator 
generic map(
  ADDR_WIDTH=>ADDR_WIDTH)
port map(
I_CLK=>I_CLK,
I_RESET=>I_RESET,
I_ADDR_LOAD=>addr_gen_load,
I_ADDR_IN=>i_ADDR_IN,
I_ENABLE=>addr_gen_en,
O_ADDR_OUT=>O_MEM_ADDR_OUT);


ContextRegisters0:ContextRegisters 
generic map(
  NUM_LIN=>NUM_LIN,
  NUM_COL=>NUM_COL,
  DATA_WIDTH=>DATA_WIDTH)
port map(
  I_CLK=>I_CLK,
  I_RESET=>I_RESET,
  I_LINE_EN=> lin_en,
  I_DATA=>I_IP_DATA,
  I_DATA_SIN=> I_MEM_DATA_IN,
  I_DATA_PS=>ps,
  I_RW=>cr_rw,
  O_DATA=>registers_out);

O_IP_DATA<= registers_out;

-- Tristate buffers
gen:for i in 0 to NUM_LIN-1 generate
  O_MEM_DATA_OUT<= registers_out(DATA_WIDTH*(i+1)-1 downto DATA_WIDTH*i) when lin_en(i)='1' else (others=>'Z');
end generate;

  
end one;
