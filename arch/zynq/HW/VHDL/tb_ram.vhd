LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE IEEE.NUMERIC_STD.ALL;
 
ENTITY TB_RAM IS
 generic(
 ADDR_WIDTH: INTEGER :=8;
 DATA_WIDTH: INTEGER :=8);
END TB_RAM;

architecture behaviour of TB_RAM is
  
 -- Component Declaration for the Unit Under Test (UUT)
 
COMPONENT sync_ram is
  generic(
  ADDR_WIDTH: INTEGER :=8;
  DATA_WIDTH: INTEGER :=8);
  
  port (
    clock   : in  std_logic;
    we      : in  std_logic;
    address : in  std_logic_vector(ADDR_WIDTH-1 downto 0);
    data    : inout  std_logic_vector(DATA_WIDTH-1 downto 0)  
  );
END COMPONENT;


signal clock : std_logic :='0';
signal we: std_logic;
signal data: std_logic_vector(DATA_WIDTH-1 downto 0):= (others=>'0');
signal Tx_data: std_logic_vector(DATA_WIDTH-1 downto 0):= (others=>'0');
signal Rx_data: std_logic_vector(DATA_WIDTH-1 downto 0):= (others=>'0');
signal address: std_logic_vector(ADDR_WIDTH-1 downto 0):= (others=>'0');

constant CLK_PERIOD : time :=10 ns;

begin
  
 data <= Tx_data when (WE='1') else (others=>'Z');
 Rx_data <= data when (WE='0') else (others=>'Z'); 
  
UUT: sync_ram 
port map(
CLOCK=> clock,
WE=> we,
ADDRESS=> address,
DATA=> data);  

--clock generation
clock<= not clock after (CLK_PERIOD/2);

--stimuli generation
stim_gen: process
begin
address<=(others=>'0');
Tx_data<=(others=>'0');
wait for CLK_PERIOD;
-- write in 16 subsequent addresses
for i in 0 to 15 loop
we<='1';
address<=address+1;
Tx_data<=Tx_data+1;
wait for CLK_PERIOD;
end loop;


-- read the memory contents  
address<=(others=>'0');
wait for CLK_PERIOD;

for k in 0 to 15 loop
we<='0'; 
address<=address+1; 
wait for CLK_PERIOD;
end loop;
wait;
end process;

end behaviour;

