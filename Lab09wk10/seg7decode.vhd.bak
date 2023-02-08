-- Sends output to seven segment display based on 6 bit input
-- Dahlgren 10/30/2022 
library ieee; 
use ieee.std_logic_1164.all;
 
-- describe the functional block diagram symbol 
entity SEQ7DECODE is  
port(A: in std_logic_vector(5 downto 0);  
     SEG: out std_logic_vector(7 downto 0)
	  ); 
end entity SEQ7DECODE; 
 
-- describe signals and vectors using multiplexer with-select syntax 
architecture MULTIPLEXER of SEQ7DECODE is  
begin  
 
  with A select  
	SEG<= 
	8X"C0" when 6X"00",  
	8X"F9" when 6X"01",  
	8X"A4" when 6X"02", 
	8X"B0" when 6X"03", 
	8X"99" when 6X"04", 
	8x"92" when 6x"05",
	8x"82" when 6x"06",
	8x"D8" when 6x"07",
	8x"80" when 6x"08",
	8x"90" when 6x"09",
	8x"88" when 6x"0A",
	8x"83" when 6x"0B",
	8x"A7" when 6x"0C",
	8x"A1" when 6x"0D",
	8x"86" when 6x"0E",
	8x"8E" when 6x"0F",
	8x"C2" when 6x"10",
	8x"8B" when 6x"11",
	8x"FB" when 6x"12",
	8x"E1" when 6x"13",
	8x"8A" when 6x"14",
	8x"C7" when 6x"15",
	8x"C8" when 6x"16",
	8x"AB" when 6x"17",
	8x"A3" when 6x"18",
	8x"8C" when 6x"19",
	8x"98" when 6x"1A",
	8x"AF" when 6x"1B",
	8x"93" when 6x"1C",
	8x"87" when 6x"1D",
	8x"E3" when 6x"1E",
	8x"C1" when 6x"1F",
	8x"81" when 6x"20",
	8x"89" when 6x"21",
	8x"91" when 6x"22",
	8x"E4" when 6x"23",
	8x"BF" when 6x"24",
	8x"F7" when 6x"25",
	8X"7F" when 6X"26", 
	8X"FF" when others; 
 
end architecture MULTIPLEXER; 
 