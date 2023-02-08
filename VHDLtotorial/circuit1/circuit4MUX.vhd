--circuit 4 implemented with multiplexer;
--Dahlgren 10/28

library ieee;
use ieee.std_logic_1164.all;

entity circuit4MUX is 
port(
	x: in std_logic_vector(2 downto 0);
	F: out std_logic

);

end entity;
architecture dataflow of circuit4MUX is

begin
	with x select F <=
	'1' when "000",
	'1' when "001",
	'1' when "010",
	'1' when "011",
	'1' when "100",
	'0' when "101",
	'0' when "110",
	'0' when others;
	


end architecture;