----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:57:32 05/13/2019 
-- Design Name: 
-- Module Name:    Register - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Register is
generic ( n: natural :=32);
    Port ( input : in  STD_LOGIC_Vector (n-1 downto 0) ;
           clk : in  STD_LOGIC;
           load: in  STD_LOGIC;
           increment : in  STD_LOGIC;
           clear : in  STD_LOGIC;
           output : out  STD_LOGIC_Vector (n-1 downto 0));
end Register;

architecture Behavioral of Register is
signal temp: Std_logic_vector (n-1 downto 0) := (others=> '0');
begin
process(clk)
begin 
	if (clk' event AND clk='1')then 
		if (load ='1') then
			temp <= input;
		elsif (increment ='1') then 
			temp<= temp+1;
		elsif (clear ='1')then 
			temp<=(others => '0');
		end if;
	end if;
end process;
output <= temp;
end Behavioral;

