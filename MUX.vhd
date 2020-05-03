----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:51:02 05/13/2019 
-- Design Name: 
-- Module Name:    MUX - Behavioral 
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
use work.DependeciesPackage.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is
generic (s: natural := 32);

    Port ( 
	 
	 
	 selection : in  STD_LOGIC_Vector (4 downto 0);
           r0 : in  STD_LOGIC_Vector (s-1 downto 0);
           r1 : in  STD_LOGIC_Vector (s-1 downto 0);
           r2 : in  STD_LOGIC_Vector (s-1 downto 0);
           r3 : in  STD_LOGIC_Vector (s-1 downto 0);
           r4 : in  STD_LOGIC_Vector (s-1 downto 0);
           r5 : in  STD_LOGIC_Vector (s-1 downto 0);
           r6 : in  STD_LOGIC_Vector (s-1 downto 0);
           r7 : in  STD_LOGIC_Vector (s-1 downto 0);
           r8 : in  STD_LOGIC_Vector (s-1 downto 0);
           r9 : in  STD_LOGIC_Vector (s-1 downto 0);
           r10 : in  STD_LOGIC_Vector (s-1 downto 0);
           r11 : in  STD_LOGIC_Vector (s-1 downto 0);
           r12 : in  STD_LOGIC_Vector (s-1 downto 0);
           r13 : in  STD_LOGIC_Vector (s-1 downto 0);
           r14 : in  STD_LOGIC_Vector (s-1 downto 0);
           r15 : in  STD_LOGIC_Vector (s-1 downto 0);
           r16 : in  STD_LOGIC_Vector (s-1 downto 0);
           r17 : in  STD_LOGIC_Vector (s-1 downto 0);
           r18 : in  STD_LOGIC_Vector (s-1 downto 0);
           r19 : in  STD_LOGIC_Vector (s-1 downto 0);
           r20 : in  STD_LOGIC_Vector (s-1 downto 0);
           r21 : in  STD_LOGIC_Vector (s-1 downto 0);
           r22 : in  STD_LOGIC_Vector (s-1 downto 0);
           r23 : in  STD_LOGIC_Vector (s-1 downto 0);
           r24 : in  STD_LOGIC_Vector (s-1 downto 0);
           r25 : in  STD_LOGIC_Vector (s-1 downto 0);
           r26 : in  STD_LOGIC_Vector (s-1 downto 0);
           r27 : in  STD_LOGIC_Vector (s-1 downto 0);
           r28 : in  STD_LOGIC_Vector (s-1 downto 0);
           r29 : in  STD_LOGIC_Vector (s-1 downto 0);
           r30 : in  STD_LOGIC_Vector (s-1 downto 0);
           r31 : in  STD_LOGIC_Vector (s-1 downto 0);
           rout : out  STD_LOGIC_Vector (s-1 downto 0););
end MUX;

architecture Behavioral of MUX is

begin


end Behavioral;

