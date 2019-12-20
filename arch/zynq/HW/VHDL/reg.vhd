----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.04.2019 14:18:08
-- Design Name: 
-- Module Name: reg - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity reg is

generic (DATA_WIDTH: integer := 16); 
Port(
    CLK         : in std_logic;
    reset       : in std_logic;
    enable    :           in std_logic;    --enables shifting
    din         : in STD_LOGIC_vector(DATA_WIDTH-1 downto 0); 
    dout        : out STD_LOGIC_vector(DATA_WIDTH-1 downto 0) 

); 
end reg;

architecture Behavioral of reg is

begin

    process (CLK,din, reset) is 
	begin
	    if (reset='1') then
	    dout <= (others=>'0');
		elsif (CLK'EVENT AND CLK='1') then
		if enable='1' then
           dout <= din;
           end if;
        end if;
	end process;

end Behavioral;
