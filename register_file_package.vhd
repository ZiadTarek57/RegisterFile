--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all; 


package register_file_package is
component mux is
	--GENERIC (n: natural := 32);
	port(
	selection : in STD_LOGIC_VECTOR (4 DOWNTO 0);
	r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31 : in STD_LOGIC_VECTOR (31 DOWNTO 0);
	rout : out STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
	
end component;


component reg is
	--GENERIC (n: natural :=32);
port(
		input : in STD_LOGIC_VECTOR (31 DOWNTO 0);
		clk, load, increment,reset : in STD_LOGIC ;
		output : out STD_LOGIC_VECTOR (31 DOWNTO 0) 
);
end component;
--
--component decoder is
----GENERIC (n : natural := 5);
--PORT(
--input: in STD_LOGIC_VECTOR (4 DOWNTO 0);
--r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23,r24,r25,r26,r27,r28,r29,r30,r31 : out STD_LOGIC
--);
--end component;


component Decoder is
PORT ( selection: in STD_LOGIC_VECTOR (4 downto 0);
registerBits: out STD_LOGIC_VECTOR (31 DOWNTO 0));

end component;




end register_file_package;

--package body register_file_package is
--
------ Example 1
----  function <function_name>  (signal <signal_name> : in <type_declaration>  ) return <type_declaration> is
----    variable <variable_name>     : <type_declaration>;
----  begin
----    <variable_name> := <signal_name> xor <signal_name>;
----    return <variable_name>; 
----  end <function_name>;
--
------ Example 2
----  function <function_name>  (signal <signal_name> : in <type_declaration>;
----                         signal <signal_name>   : in <type_declaration>  ) return <type_declaration> is
----  begin
----    if (<signal_name> = '1') then
----      return <signal_name>;
----    else
----      return 'Z';
----    end if;
----  end <function_name>;
--
------ Procedure Example
----  procedure <procedure_name>  (<type_declaration> <constant_name>  : in <type_declaration>) is
----    
----  begin
----    
----  end <procedure_name>;
-- 
--end register_file_package;
