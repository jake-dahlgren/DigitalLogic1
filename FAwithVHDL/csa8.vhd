-- Dahlgren 11/4/22
-- Carry Select Adder
library ieee;
use ieee.std_logic_1164.all;
entity csa8 is
port(
A, B: in std_logic_vector(7 downto 0);
SUB: in std_logic;
SUM: out std_logic_vector(7 downto 0);
cout: out std_logic
);
end entity;
architecture struct of csa8 is
signal C1: std_logic;
signal Bsig: std_logic_vector(7 downto 0);
signal Cout0, Cout1: std_logic;
signal SUM1, SUM0: std_logic_vector(3 downto 0);
begin

with SUB select Bsig <=
B when '0',
(not B) when others;


RCA0: entity work.rca port map(A=>A(3 downto 0), B=>Bsig(3 downto 0), Cin=>SUB, Cout=>C1, S=>SUM(3 downto 0));

RCA1: entity work.rca port map(A=>A(7 downto 4), B=>BSig(7 downto 4), S=>SUM1(3 downto 0), Cin=>'1', Cout=>Cout1);
RCA2: entity work.rca port map(A=>A(7 downto 4), B=>BSig(7 downto 4), S=>SUM0(3 downto 0), Cin=>'0', Cout=>Cout0);

with c1 select SUM(7 downto 4) <=
SUM1 when '1',
SUM0 when others;

with c1 select Cout <=
Cout1 when '1',
Cout0 when others;

end architecture;
