----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2019 13:50:13
-- Design Name: 
-- Module Name: firm0 - Behavioral
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
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity firm0 is
generic(
    DATA_SIZE : integer := 8;
    OUT_DATA_SIZE : integer := 16
   );
   
port(
    din: in std_logic_vector(DATA_SIZE-1 downto 0);
    cin : in std_logic_vector(DATA_SIZE-1 downto 0);
    sin : in std_logic_vector(OUT_DATA_SIZE-1 downto 0);
    
    input         : in std_logic_vector(DATA_SIZE-1 downto 0);
    sel0          : in std_logic;
    
    dm : out std_logic_vector(DATA_SIZE-1 downto 0);
    dout: out std_logic_vector(OUT_DATA_SIZE-1 downto 0);
         
    enable : in std_logic;
    reset: in std_logic;
    clk: in std_logic);
end firm0;

architecture Behavioral of firm0 is

signal d : std_logic_vector(DATA_SIZE-1 downto 0);
signal c : std_logic_vector(DATA_SIZE-1 downto 0);
signal s : std_logic_vector(OUT_DATA_SIZE-1 downto 0);
--signal d_mux_out : std_logic_vector(DATA_SIZE-1 downto 0);

begin

c <= cin;
s <= sin;
d <= din;


mult_1: process (clk,reset,d,input,sel0)
begin
    if reset='1' then dm<= (others=>'0');
    elsif clk'event and clk='1' then
    case sel0 is
        when '0' => dm <= d;
        when '1' => dm <= input;
        when others=>
    end case;
    end if; 
end process mult_1;


process(clk,reset)
begin
if reset='1' then dout<= (others=>'0');
elsif clk'event and clk='1' then
    if enable='1' then
        dout <= c*d+s;
    end if;
end if;
end process;



end Behavioral;
