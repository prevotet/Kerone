----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 21.05.2019 14:19:20
-- Design Name: 
-- Module Name: top_firm0 - Behavioral
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

entity top_firm0 is
generic(
    DATA_SIZE : integer := 8;
    OUT_DATA_SIZE : integer := 16;
    M: integer := 32
   );
port(
    data_in: in std_logic_vector(DATA_SIZE-1 downto 0);
    data_out: out std_logic_vector(OUT_DATA_SIZE-1 downto 0);

    --add here   
    sel_out       : in std_logic_vector( 4 downto 0);
    mux_out       : out std_logic_vector(DATA_SIZE-1 downto 0);

    sel_in       : in std_logic_vector( 4 downto 0);
    input         : in std_logic_vector(DATA_SIZE-1 downto 0);
    
    enable : in std_logic;
    reset: in std_logic;
    clk: in std_logic);
end top_firm0;

architecture Behavioral of top_firm0 is

type dd is array (M downto 0) of std_logic_vector(DATA_SIZE-1 downto 0);
type cc is array (M downto 0) of std_logic_vector(DATA_SIZE-1 downto 0);
type ss is array (M downto 0) of std_logic_vector(OUT_DATA_SIZE-1 downto 0);

signal d : dd;
signal c : cc;
signal s : ss;

signal sel : std_logic_vector(31 downto 0);

component firm0 is
generic(
    DATA_SIZE : integer := 8;
    OUT_DATA_SIZE : integer := 16
   );
   
port(
    din: in std_logic_vector(DATA_SIZE-1 downto 0);
    cin : in std_logic_vector(DATA_SIZE-1 downto 0);
    sin : in std_logic_vector(OUT_DATA_SIZE-1 downto 0);
    
    input         : in std_logic_vector(DATA_SIZE-1 downto 0);
    sel0         : in std_logic;
    
    dm : out std_logic_vector(DATA_SIZE-1 downto 0);
    dout: out std_logic_vector(OUT_DATA_SIZE-1 downto 0);
             
    enable : in std_logic;
    reset: in std_logic;
    clk: in std_logic);
end component;

begin
c(0) <= "00000001";
c(1) <= "00001111";
c(2) <= "00001010";
c(3) <= "00000001";
c(4) <= "00001111";
c(5) <= "00001010";
c(6) <= "00000001";
c(7) <= "00001111";
c(8) <= "00001011";
c(9) <= "00000001";
c(10) <= "00001111";
c(11) <= "00001010";
c(12) <= "00000001";
c(13) <= "00001111";
c(14) <= "00001010";
c(15) <= "00000001";
c(16) <= "00001111";
c(17) <= "00001010";
c(18) <= "00000001";
c(19) <= "00001111";
c(20) <= "00001010";
c(21) <= "00000001";
c(22) <= "00001111";
c(23) <= "00001010";
c(24) <= "00000001";
c(25) <= "00001111";
c(26) <= "00001010";
c(27) <= "00000001";
c(28) <= "00001111";
c(29) <= "00001010";
c(30) <= "00000001";
c(31) <= "00001111";

d(0) <= data_in;
s(0) <= "0000000000000000";

gen0: for i in 0 to M-1 generate
firm_i:firm0 
port map(
    clk        => clk,
    reset      => reset,
    enable     => enable,
    dm         => d(i+1),
    din        => d(i),
    cin        => c(i), 
    sin        => s(i),
    input      =>input,
    sel0       =>sel(i),
    dout       => s(i+1));
end generate;

data_out <= s(M);

mux : process(sel_out, d)
begin
    case sel_out is        
        when "00000" => mux_out<= d(0);
        when "00001" => mux_out<= d(1);
        when "00010" => mux_out<= d(2);
        when "00011" => mux_out<= d(3);
        when "00100" => mux_out<= d(4);
        when "00101" => mux_out<= d(5);
        when "00110" => mux_out<= d(6);
        when "00111" => mux_out<= d(7);
        when "01000" => mux_out<= d(8);
        when "01001" => mux_out<= d(9);
        when "01010" => mux_out<= d(10);
        when "01011" => mux_out<= d(11);
        when "01100" => mux_out<= d(12);
        when "01101" => mux_out<= d(13);
        when "01110" => mux_out<= d(14);
        when "01111" => mux_out<= d(15);
        when "10000" => mux_out<= d(16);
        when "10001" => mux_out<= d(17);
        when "10010" => mux_out<= d(18);
        when "10011" => mux_out<= d(19);
        when "10100" => mux_out<= d(20);
        when "10101" => mux_out<= d(21);
        when "10110" => mux_out<= d(22);
        when "10111" => mux_out<= d(23);
        when "11000" => mux_out<= d(24);
        when "11001" => mux_out<= d(25);
        when "11010" => mux_out<= d(26);
        when "11011" => mux_out<= d(27);
        when "11100" => mux_out<= d(28);
        when "11101" => mux_out<= d(29);
        when "11110" => mux_out<= d(30);
        when "11111" => mux_out<= d(31);
        when others=>
    end case;
end process mux;


dec_1 : process(sel_in)
begin
sel<= (others=>'0');
case sel_in is
when "00000" => sel(0)<= '1';
when "00001" => sel(1)<= '1';
when "00010" => sel(2)<= '1';
when "00011" => sel(3)<= '1';
when "00100" => sel(4)<= '1';
when "00101" => sel(5)<= '1';
when "00110" => sel(6)<= '1';
when "00111" => sel(7)<= '1';
when "01000" => sel(8)<= '1';
when "01001" => sel(9)<= '1';
when "01010" => sel(10)<= '1';
when "01011" => sel(11)<= '1';
when "01100" => sel(12)<= '1';
when "01101" => sel(13)<= '1';
when "01110" => sel(14)<= '1';
when "01111" => sel(15)<= '1';
when "10000" => sel(16)<= '1';
when "10001" => sel(17)<= '1';
when "10010" => sel(18)<= '1';
when "10011" => sel(19)<= '1';
when "10100" => sel(20)<= '1';
when "10101" => sel(21)<= '1';
when "10110" => sel(22)<= '1';
when "10111" => sel(23)<= '1';
when "11000" => sel(24)<= '1';
when "11001" => sel(25)<= '1';
when "11010" => sel(26)<= '1';
when "11011" => sel(27)<= '1';
when "11100" => sel(28)<= '1';
when "11101" => sel(29)<= '1';
when "11110" => sel(30)<= '1';
when "11111" => sel(31)<= '1';
when others=>sel <=(others=>'0');
end case;
end process dec_1;


end Behavioral;
