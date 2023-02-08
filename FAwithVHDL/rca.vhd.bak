-- Varnell 11/1/22
-- Full Adder
library ieee;
use ieee.std_logic_1164.all;
entity FA is
port(
A, B, Cin: in std_logic;
Cout, Sum: out std_logic
);
end entity;
architecture dataflow of FA is
begin
Sum <= A XOR B XOR Cin;
Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin);
end architecture;