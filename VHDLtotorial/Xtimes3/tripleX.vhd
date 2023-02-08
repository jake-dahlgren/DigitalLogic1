-- 3 bit input, F = 3 * x
--Dahlgren 11/1/22

library ieee;
use ieee.std_logic_1164.all;

entity tripleX is
port(
	x2, x1, x0: in std_logic;
	F4, F3, F2, F1, F0: in std_logic
);
end entity;

architecture dataflow of tripleX is
signal x: std_logic_vector(2 downto 0);
signal F: std_logic_vector(4 downto 0);
begin

x <= x2 & x1 & x0;


with x select F <=
	5x"0" when 3b"000",
	5x"03" when 3b"001",
	5x"06" when 3b"010",
	5x"09" when 3b"011",
	5x"0c" when 3b"100",
	5x"0F" when 3b"101",
	5x"12" when 3b"110",
	5x"15" when others;
	
F4 <= F(4);
F3 <= F(3);
F2 <= F(2);
F1 <= F(1);
F0 <= F(0);

end architecture;