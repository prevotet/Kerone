library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity AddressGenerator is
generic(
  ADDR_WIDTH: integer := 8);
port(
  I_CLK: in std_logic;
  I_RESET: in std_logic;
 -- Load address from the address register
  I_ADDR_LOAD: in std_logic;
  --  First address taken from the address register
  I_ADDR_IN: in std_logic_vector(ADDR_WIDTH-1 downto 0);
  -- enable address count
  I_ENABLE: in std_logic;
  -- Memory address
  O_ADDR_OUT: out std_logic_vector(ADDR_WIDTH-1 downto 0));
end entity;

architecture one of AddressGenerator is

signal address: std_logic_vector(ADDR_WIDTH-1 downto 0);
begin

process(I_CLK,I_RESET)
begin
  if I_RESET='1' then
    address<= (others=>'0');
  elsif I_CLK'event and I_CLK='1' then
    if I_ADDR_LOAD='1' then
      address<= I_ADDR_IN;
    elsif I_ENABLE='1' then
      address<= address +1 ;
    end if;
  end if;
end process;

O_ADDR_OUT<= address;

end one;