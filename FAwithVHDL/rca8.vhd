-- Dahlgren 11/3/22
-- Ripple Carry Adder 8 bit
library ieee;
use ieee.std_logic_1164.all;
entity RCA8 is
port(
A, B: in std_logic_vector(7 downto 0);
SUB: in std_logic;
SUM: out std_logic_vector(7 downto 0);
cout: out std_logic
);
end entity;
architecture struct of RCA8 is
signal C1: std_logic;
signal Bsig: std_logic_vector(7 downto 0);
begin

with SUB select Bsig <=
B when '0',
(not B) when others;


RCA0: entity work.rca port map(A=>A(3 downto 0), B=>Bsig(3 downto 0), Cin=>SUB, Cout=>C1, S=>SUM(3 downto 0));

RCA1: entity work.rca port map(A=>A(7 downto 4), B=>BSig(7 downto 4), S=>SUM(7 downto 4), Cin=>C1, Cout=>Cout);

end architecture;
