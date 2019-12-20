----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 22.05.2019 08:05:10
-- Design Name: 
-- Module Name: fsm - Behavioral
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

entity fsm is
    port (clk        : in std_logic;
        reset       : in std_logic;
        cfg          : in std_logic;
        start        : in std_logic;
        stop         : in std_logic;            
        sel_out      : out std_logic;
        sel_in       : out std_logic);
end fsm;

architecture Behavioral of fsm is

type t_fsm is (S0, S1, S2, S3, S4);
signal state                        : t_fsm := S0;
signal next_state                : t_fsm := S0;

begin

        -- next state assignment
        process (clk,reset) 
        begin
                if reset='1' then state<=S0;
               elsif (clk='1' and clk'event) then
                        state <= next_state;
                end if;
        end process;
        
        -- next state logic
        next_state <= S1 when ((state = S0 and start = '1' and cfg = '0') or (state = S1 and stop = '0')) else                   
                      S2 when ((state = S0 and start = '1' and cfg = '1') or (state = S2 and stop = '0')) else
                      S3 when (state = S1 and stop = '1') else
                      S4 when (state = S2 and stop = '1') else
                      S0;
                      
        -- output logic
        sel_out  <= '1' when (state = S1) else '0';
        sel_in   <= '1' when (state = S2) else '0';


end Behavioral;
