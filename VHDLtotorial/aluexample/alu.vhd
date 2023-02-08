 library ieee;
 use ieee.std_logic_1164.all;
 use ieee.std_logic_unsigned.all;
 
 entity alu is
 port(
 A, B: in std_logic_vector(3 downto 0);
 F: out std_logic_vector(3 downto 0);
 S: in std_logic_vector(2 downto 0));
 end entity;
 
 architecture dataflow of alu is
 begin
 
 with S select F <=
 A + B when "000",
 A - B when "001",
 A + "0001" when "010",
 A - "0001" when "011",
 A when "100",
 (A and B) when "101",
 (A or B) when "110",
 (A xor B) when others;
 
 end architecture;