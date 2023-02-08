--3 bit finction x < 5
--Dahlgren 10/28

library ieee;
use ieee.std_logic_1164.all;

entity circuit6 is
port(
	Collision, LeftS, RightS: in std_logic;
	LDIR, RDIR, LEN, REN: out std_logic
);
end entity;

architecture dataflow of circuit6 is
signal CLR: std_logic_vector(2 downto 0);

begin

CLR <= Collision & LeftS & RightS;
--collision is clr2
--lefts is clr1
--rights is clr0
REN <= '1';
LEN <= '0';

with CLR select LDIR <=
'1' when "010"|"011",
'0' when others;

with CLR select RDIR <=
'1' when "001"|"011",
'0' when others;


end architecture;