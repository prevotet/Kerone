----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.04.2019 10:22:04
-- Design Name: 
-- Module Name: shift_reg - Behavioral
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

entity shift_reg is
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
 end shift_reg;

architecture Behavioral of shift_reg is

signal s: std_logic_vector((NUM_COL+1)*DATA_WIDTH-1 downto 0);


component reg is
generic (DATA_WIDTH: integer := 16); 
Port(
    CLK         : in std_logic;
    reset       : in std_logic;
    enable    :   in std_logic;    --enables shifting
    din         : in STD_LOGIC_vector(DATA_WIDTH-1 downto 0); 
    dout        : out STD_LOGIC_vector(DATA_WIDTH-1 downto 0) 

); 
end component;

begin

--------------------------------------------------------------------------
-- Input data selector
-- if RW='1' then reading mode. The output becomes the input
-- if RW='0' the writing mode. The input comes from outside
process(I_RW, s, I_SIN)
  begin
    if I_RW='1' then
    s(DATA_WIDTH-1 downto 0)<=s(DATA_WIDTH*NUM_COL+DATA_WIDTH-1 downto 8*NUM_COL);
  else
    s(DATA_WIDTH-1 downto 0)<=I_SIN;
   end if;
end process;

--------------------------------------------------------------------------
-- Generation of the shift registers from FF
-- NUM_COL is the number of registers in the shift register

gen0: for i in 0 to NUM_COL-1 generate

reg_i:reg 
generic map (DATA_WIDTH=> DATA_WIDTH)
port map(

CLK=> I_CLK,
reset      => I_RESET,
enable    => I_ENABLE,
din        => s(DATA_WIDTH*i+DATA_WIDTH-1 downto i*DATA_WIDTH),
dout       => s(DATA_WIDTH*(i+1)+DATA_WIDTH-1 downto DATA_WIDTH*(i+1)));
end generate;

-- Output of the shift registers
O_SOUT<= s((DATA_WIDTH*NUM_COL+DATA_WIDTH-1) downto (DATA_WIDTH*NUM_COL));

end Behavioral;
