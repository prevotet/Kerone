library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;

-- A 128x8 single-port RAM in VHDL
entity RAM is
port(
 ADDR: in std_logic_vector(6 downto 0);   -- Address to write/read RAM
 DATA_IN: in std_logic_vector(7 downto 0); -- Data to write into RAM
 WR: in std_logic; -- Write enable 
 CLK: in std_logic; -- clock input for RAM
 DATA_OUT: out std_logic_vector(7 downto 0) -- Data output of RAM
);
end RAM;

architecture Behavioral of RAM is
-- define the new type for the 128x8 RAM 
type RAM_ARRAY is array (0 to 127 ) of std_logic_vector (7 downto 0);
-- initial values in the RAM
signal RAM: RAM_ARRAY;

begin
process(CLK)
begin
 if(rising_edge(CLK)) then
 if(WR='1') then -- when write enable = 1, 
 -- write input data into RAM at the provided address
 RAM(to_integer(unsigned(ADDR))) <= DATA_IN;
 -- The index of the RAM array type needs to be integer so
 -- converts RAM_ADDR from std_logic_vector -> Unsigned -> Interger using numeric_std library
 end if;
 end if;
end process;
 -- Data to be read out 
 DATA_OUT <= RAM(to_integer(unsigned(ADDR)));
end Behavioral;