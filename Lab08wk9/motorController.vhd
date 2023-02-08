--Controls motors for digibot based on sensor input
--Dahlgren 10/30/2022

library ieee;
use ieee.std_logic_1164.all;

entity motorController is
port(
	Collision, LeftS, RightS: in std_logic;
	LDIR, RDIR, LEN, REN: out std_logic;
	HEX5CTRL, HEX4CTRL, HEX3CTRL, HEX2CTRL, HEX1CTRL, HEX0CTRL: out std_logic_vector(5 downto 0)
);
end entity;

architecture dataflow of motorController is
signal CLR: std_logic_vector(2 downto 0);

begin

CLR <= Collision & LeftS & RightS;
--collision is clr2
--lefts is clr1
--rights is clr0

with CLR select LDIR <=
'1' when "010"|"011",
'0' when others;

with CLR select RDIR <=
'1' when "001"|"011",
'0' when others;

with CLR select LEN <=
'0' when "000"|"001",
'1' when others;

with CLR select REN <=
'0' when "000"|"010",
'1' when others;

--hex5 is far left digit, hex 0 is far right digit

with CLR select HEX5CTRL <=
"111111" when others;

with CLR select HEX4CTRL <=
"111111" when "000",
"111111" when "001",
"011011" when "010",
"111111" when others;

with CLR select HEX3CTRL <=
"011100" when "000",
"010101" when "001",
"010010" when "010",
"111111" when "011",
"010011" when "100",
"001011" when others;

with CLR select HEX2CTRL <=
"011101" when "000",
"001110" when "001",
"010000" when "010",
"111111" when "011",
"001010" when "100",
"001010" when others;

with CLR select HEX1CTRL <=
"011000" when "000",
"001111" when "001",
"010001" when "010",
"010000" when "011",
"010100" when "100",
"001100" when others;

with CLR select HEX0CTRL <=
"011001" when "000",
"011101" when "001",
"011101" when "010",
"011000" when "011",
"001110" when "100",
"010100" when others;


end architecture;