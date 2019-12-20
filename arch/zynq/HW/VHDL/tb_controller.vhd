library ieee;
use ieee.std_logic_1164.all;

entity tb_controller is
end entity;

architecture test of tb_controller is

component Controller is
generic(
NUM_COL: integer :=4; 
NUM_LIN: integer :=4);
 
port(
  I_CLK: in std_logic;
  I_RESET: in std_logic;
  I_CMD: in std_logic_vector(3 downto 0);
  O_ADDR_GEN_EN: out std_logic;
  O_ADDR_LOAD: out std_logic;
  O_PS: out std_logic;
  O_LINE_EN: out std_logic_vector(NUM_LIN-1 downto 0)
  );
end component;

constant CLK_PERIOD: time :=10ns;
signal clk: std_logic:='1';
signal reset: std_logic;
signal cmd: std_logic_vector(3 downto 0);
signal addr_gen_en: std_logic;
signal addr_load: std_logic;
signal ps: std_logic;
signal line_en: std_logic_vector(3-1 downto 0);
begin

DUT: controller 
generic map(
  NUM_COL=>4,
  NUM_LIN=>3)
port map(
I_CLK=>clk,
I_RESET=>reset,
I_CMD=>cmd,
O_ADDR_GEN_EN=>addr_gen_en,
O_ADDR_LOAD=>addr_load,
O_PS=> ps,
O_LINE_EN=>line_en);

  
  
    
clk<= not clk after CLK_PERIOD/2;

process
begin
reset<='1';
wait for CLK_PERIOD;

reset<='0';
wait for 4*CLK_PERIOD;


cmd<="0001";
wait for CLK_PERIOD;
cmd<="0000";
for i in 0 to 20 loop
wait for CLK_PERIOD;
end loop;

wait;
end process;
end test;