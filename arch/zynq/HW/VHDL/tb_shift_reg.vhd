library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity tb_shift_reg is
end tb_shift_reg;
 
architecture test of tb_shift_reg is


component shift_reg is
generic (M: integer := 4); 
 Port (
 clk: in std_logic;
 reset: in std_logic;
 enable: in std_logic;
 rw: in std_logic;
 sin: in std_logic_vector (7 downto 0);
 sout: out std_logic_vector(7 downto 0));
 end component; 


CONSTANT CLK_PERIOD: time := 20 ns;
signal clk: std_logic:='1';
signal reset: std_logic;
signal rw: std_logic;
signal enable: std_logic;
signal sin: std_logic_vector(7 downto 0);
signal sout: std_logic_vector(7 downto 0);


begin
  
DUT: shift_reg 
port map(
clk=> clk,
reset=> reset,
rw=> rw,
enable => enable,
sin=> sin,
sout=>  sout);
 
-- clock generation 
clk<= not clk after (CLK_PERIOD/2);  
  
process
begin
reset<='1';
enable<= '0';
rw<='0';
wait for CLK_PERIOD;

reset<='0';
enable<='1'; 
sin<="00000001" ;
wait for CLK_PERIOD;


sin<="00000010" ;
wait for CLK_PERIOD;

sin<="00000011" ;
wait for CLK_PERIOD;

sin<="00000100" ;
wait for CLK_PERIOD;

enable<='0';
sin<="00000001";
wait for CLK_PERIOD;

enable<='0';
sin<="00000010" ;
wait for CLK_PERIOD;

enable<='0';
sin<="00000011" ;
wait for CLK_PERIOD;

enable<='1';
rw<='1';
wait for CLK_PERIOD;

enable<='1';
rw<='1';
wait for CLK_PERIOD;

enable<='1';
rw<='1';
wait for CLK_PERIOD;

enable<='1';
rw<='1';
wait for CLK_PERIOD;

enable<='0';
rw<='1';
wait for CLK_PERIOD;

enable<='0';
rw<='1';
wait for CLK_PERIOD;



wait;

end process;
 

 
end test; 