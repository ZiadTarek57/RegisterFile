----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    01:00:55 05/15/2019 
-- Design Name: 
-- Module Name:    register_file - Behavioral 
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
use ieee.std_logic_signed.all;
use ieee.std_logic_unsigned.all; 
use work.register_file_package.all;


-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity RegisterFile is


--GENERIC (n: natural := 32);
Port( read_sel1,read_sel2, write_sel : in  STD_LOGIC_VECTOR (4 DOWNTO 0);
write_data: in  STD_LOGIC_VECTOR (31 DOWNTO 0);
write_ena, clk : in STD_LOGIC;

data1, data2:out  STD_LOGIC_VECTOR (31 DOWNTO 0));

end RegisterFile; 

architecture Behavioral of RegisterFile is
SIGNAL inp0: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp1: STD_LOGIC_VECTOR (31 DOWNTO 0); 
SIGNAL inp2: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp3: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp4: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp5: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp6: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp7: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp8: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp9: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp10: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp11: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp12: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp13: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp14: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp15: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp16: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp17: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp18: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp19: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp20: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp21: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp22: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp23: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp24: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp25: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp26: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp27: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp28: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp29: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp30: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL inp31: STD_LOGIC_VECTOR (31 DOWNTO 0);

SIGNAL dec0: STD_LOGIC;
SIGNAL dec1: STD_LOGIC; 
SIGNAL dec2: STD_LOGIC;
SIGNAL dec3: STD_LOGIC;
SIGNAL dec4: STD_LOGIC;
SIGNAL dec5: STD_LOGIC;
SIGNAL dec6: STD_LOGIC;
SIGNAL dec7: STD_LOGIC;
SIGNAL dec8: STD_LOGIC;
SIGNAL dec9: STD_LOGIC;
SIGNAL dec10: STD_LOGIC;
SIGNAL dec11: STD_LOGIC;
SIGNAL dec12: STD_LOGIC;
SIGNAL dec13: STD_LOGIC;
SIGNAL dec14: STD_LOGIC;
SIGNAL dec15: STD_LOGIC;
SIGNAL dec16: STD_LOGIC;
SIGNAL dec17: STD_LOGIC;
SIGNAL dec18: STD_LOGIC;
SIGNAL dec19: STD_LOGIC;
SIGNAL dec20: STD_LOGIC;
SIGNAL dec21: STD_LOGIC;
SIGNAL dec22: STD_LOGIC;
SIGNAL dec23: STD_LOGIC;
SIGNAL dec24: STD_LOGIC;
SIGNAL dec25: STD_LOGIC;
SIGNAL dec26: STD_LOGIC;
SIGNAL dec27: STD_LOGIC;
SIGNAL dec28: STD_LOGIC;
SIGNAL dec29: STD_LOGIC;
SIGNAL dec30: STD_LOGIC;
SIGNAL dec31: STD_LOGIC;

SIGNAL decoderOutput: STD_LOGIC_VECTOR (31 DOWNTO 0);

SIGNAL mux1: STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL mux2: STD_LOGIC_VECTOR (31 DOWNTO 0);

SIGNAL inputStream :STD_LOGIC_VECTOR (31 DOWNTO 0);
SIGNAL clkSIGNAL, enable : STD_LOGIC;

--SIGNAL clk: STD_LOGIC;


	begin
	

clkSIGNAL<= clk;
inputStream<= write_data;
enable<= write_ena;
data1<= mux1;
data2<= mux2;
	
	--process(clk,write_ena)
	--begin
--DEC: decoder PORT MAP (write_sel,dec0,dec1,dec2,dec3,dec4,dec5,dec6,dec7,dec8,dec9,dec10,dec11,dec12,dec13,dec14,dec15,dec16,dec17,dec18,dec19,dec20,dec21,dec22,dec23,dec24,dec25,dec26,dec27,dec28,dec29,dec30,dec31);
dec: Decoder PORT MAP (write_sel,decoderOutput);

--if ( write_ena='1') then
--dec0<= decoderOutput(0) ;
--dec1<= decoderOutput(1);
--dec2<= decoderOutput(2);
--dec3<= decoderOutput(3);
--dec4<= decoderOutput(4);
--dec5<= decoderOutput(5);
--dec6<= decoderOutput(6);
--dec7<= decoderOutput(7);
--dec8<= decoderOutput(8);
--dec9<= decoderOutput(9);
--dec10<= decoderOutput(10);
--dec11<= decoderOutput(11);
--dec12<= decoderOutput(12);
--dec13<= decoderOutput(13);
--dec14<= decoderOutput(14);
--dec15<= decoderOutput(15);
--dec16<= decoderOutput(16);
--dec17<= decoderOutput(17);
--dec18<= decoderOutput(18);
--dec19<= decoderOutput(19);
--dec20<= decoderOutput(20);
--dec21<= decoderOutput(21);
--dec22<= decoderOutput(22);
--dec23<= decoderOutput(23);
--dec24<= decoderOutput(24);
--dec25<= decoderOutput(25);
--dec26<= decoderOutput(26);
--dec27<= decoderOutput(27);
--dec28<= decoderOutput(28);
--dec29<= decoderOutput(29);
--dec30<= decoderOutput(30);
--dec31<= decoderOutput(31);

--process(write_ena)
--begin
dec0<= decoderOutput(0)AND enable ;
dec1<= decoderOutput(1)AND enable;
dec2<= decoderOutput(2)AND enable;
dec3<= decoderOutput(3)AND enable;
dec4<= decoderOutput(4)AND enable;
dec5<= decoderOutput(5)AND enable;
dec6<= decoderOutput(6)AND enable;
dec7<= decoderOutput(7)AND enable;
dec8<= decoderOutput(8)AND enable;
dec9<= decoderOutput(9)AND enable;
dec10<= decoderOutput(10)AND enable;
dec11<= decoderOutput(11)AND enable;
dec12<= decoderOutput(12)AND enable;
dec13<= decoderOutput(13)AND enable;
dec14<= decoderOutput(14)AND enable;
dec15<= decoderOutput(15)AND enable;
dec16<= decoderOutput(16)AND enable;
dec17<= decoderOutput(17)AND enable;
dec18<= decoderOutput(18)AND enable;
dec19<= decoderOutput(19)AND enable;
dec20<= decoderOutput(20)AND enable;
dec21<= decoderOutput(21)AND enable;
dec22<= decoderOutput(22)AND enable;
dec23<= decoderOutput(23)AND enable;
dec24<= decoderOutput(24)AND enable;
dec25<= decoderOutput(25)AND enable;
dec26<= decoderOutput(26)AND enable;
dec27<= decoderOutput(27)AND enable;
dec28<= decoderOutput(28)AND enable;
dec29<= decoderOutput(29)AND enable;
dec30<= decoderOutput(30)AND enable;
dec31<= decoderOutput(31)AND enable;

--end process;
--
--R0: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec0,'0','0',inp0);
--R1: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec1,'0','0',inp1);
--R2: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec2,'0','0',inp2);
--R3: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec3,'0','0',inp3);
--R4: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec4,'0','0',inp4);
--R5: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec5,'0','0',inp5);
--R6: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec6,'0','0',inp6);
--R7: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec7,'0','0',inp7);
--R8: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec8,'0','0',inp8);
--R9: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec9,'0','0',inp9);
--R10: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec10,'0','0',inp10);
--R11: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec11,'0','0',inp11);
--R12: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec12,'0','0',inp12);
--R13: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec13,'0','0',inp13);
--R14: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec14,'0','0',inp14);
--R15: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec15,'0','0',inp15);
--R16: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec16,'0','0',inp16);
--R17: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec17,'0','0',inp17);
--R18: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec18,'0','0',inp18);
--R19: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec19,'0','0',inp19);
--R20: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec20,'0','0',inp20);
--R21: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec21,'0','0',inp21);
--R22: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec22,'0','0',inp22);
--R23: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec23,'0','0',inp23);
--R24: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec24,'0','0',inp24);
--R25: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec25,'0','0',inp25);
--R26: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec26,'0','0',inp26);
--R27: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec27,'0','0',inp27);
--R28: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec28,'0','0',inp28);
--R29: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec29,'0','0',inp29);
--R30: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec30,'0','0',inp30);
--R31: reg GENERIC MAP (n) PORT MAP (write_data,clk,write_ena AND dec31,'0','0',inp31); 


R0: reg  PORT MAP (inputStream,clkSIGNAL, dec0,'0','0',inp0);
R1: reg  PORT MAP (inputStream,clkSIGNAL, dec1,'0','0',inp1);
R2: reg  PORT MAP (inputStream,clkSIGNAL, dec2,'0','0',inp2);
R3: reg  PORT MAP (inputStream,clkSIGNAL, dec3,'0','0',inp3);
R4: reg  PORT MAP (inputStream,clkSIGNAL, dec4,'0','0',inp4);
R5: reg  PORT MAP (inputStream,clkSIGNAL, dec5,'0','0',inp5);
R6: reg  PORT MAP (inputStream,clkSIGNAL, dec6,'0','0',inp6);
R7: reg  PORT MAP (inputStream,clkSIGNAL, dec7,'0','0',inp7);
R8: reg  PORT MAP (inputStream,clkSIGNAL, dec8,'0','0',inp8);
R9: reg  PORT MAP (inputStream,clkSIGNAL, dec9,'0','0',inp9);
R10: reg  PORT MAP (inputStream,clkSIGNAL, dec10,'0','0',inp10);
R11: reg  PORT MAP (inputStream,clkSIGNAL, dec11,'0','0',inp11);
R12: reg  PORT MAP (inputStream,clkSIGNAL,dec12,'0','0',inp12);
R13: reg  PORT MAP (inputStream,clkSIGNAL, dec13,'0','0',inp13);
R14: reg  PORT MAP (inputStream,clkSIGNAL, dec14,'0','0',inp14);
R15: reg  PORT MAP (inputStream,clkSIGNAL,dec15,'0','0',inp15);
R16: reg  PORT MAP (inputStream,clkSIGNAL, dec16,'0','0',inp16);
R17: reg  PORT MAP (inputStream,clkSIGNAL, dec17,'0','0',inp17);
R18: reg  PORT MAP (inputStream,clkSIGNAL,dec18,'0','0',inp18);
R19: reg  PORT MAP (inputStream,clkSIGNAL,dec19,'0','0',inp19);
R20: reg  PORT MAP (inputStream,clkSIGNAL, dec20,'0','0',inp20);
R21: reg  PORT MAP (inputStream,clkSIGNAL, dec21,'0','0',inp21);
R22: reg  PORT MAP (inputStream,clkSIGNAL,dec22,'0','0',inp22);
R23: reg  PORT MAP (inputStream,clkSIGNAL, dec23,'0','0',inp23);
R24: reg  PORT MAP (inputStream,clkSIGNAL, dec24,'0','0',inp24);
R25: reg  PORT MAP (inputStream,clkSIGNAL, dec25,'0','0',inp25);
R26: reg  PORT MAP (inputStream,clkSIGNAL, dec26,'0','0',inp26);
R27: reg  PORT MAP (inputStream,clkSIGNAL, dec27,'0','0',inp27);
R28: reg  PORT MAP (inputStream,clkSIGNAL,dec28,'0','0',inp28);
R29: reg  PORT MAP (inputStream,clkSIGNAL, dec29,'0','0',inp29);
R30: reg  PORT MAP (inputStream,clkSIGNAL, dec30,'0','0',inp30);
R31: reg  PORT MAP (inputStream,clkSIGNAL, dec31,'0','0',inp31); 


--end if;


M1: mux PORT MAP (read_sel1,inp0,inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8,inp9,inp10,inp11,inp12,inp13,inp14,inp15,inp16,inp17,inp18,inp19,inp20,inp21,inp22,inp23,inp24,inp25,inp26,inp27,inp28,inp29,inp30,inp31,mux1);
M2: mux  PORT MAP (read_sel2,inp0,inp1,inp2,inp3,inp4,inp5,inp6,inp7,inp8,inp9,inp10,inp11,inp12,inp13,inp14,inp15,inp16,inp17,inp18,inp19,inp20,inp21,inp22,inp23,inp24,inp25,inp26,inp27,inp28,inp29,inp30,inp31,mux2);
--R0: reg GENERIC MAP (n) PORT MAP (writeData,clk,writeEnable AND dec0,'0','0',inp0);
--end process;


end Behavioral;

