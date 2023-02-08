-- Dahlgren 11/3/22
-- Full Adder
library ieee;
use ieee.std_logic_1164.all;
entity RCA is
port(
A, B: in std_logic_vector(3 downto 0);
Cin: in std_logic;
Cout: out std_logic;
S: out std_logic_vector(3 downto 0)
);
end entity;
architecture struct of RCA is
signal C1, C2, C3: std_logic;
begin

FA0: entity work.FA port map(A=>A(0), B=>B(0), Cin=>Cin, Cout=>C1, SUM=>S(0));
FA1: entity work.FA port map(A=>A(1), B=>B(1), Cin=>C1, Cout=>C2, SUM=>S(1));
FA2: entity work.FA port map(A=>A(2), B=>B(2), Cin=>C2, Cout=>C3, SUM=>S(2));
FA3: entity work.FA port map(A=>A(3), B=>B(3), Cin=>C3, Cout=>Cout, SUM=>S(3));
end architecture;
