--Full Adder circuit using gates
--Dahlgren 10_27
--CE 1901

--to use std_logic type must include std_logic library
library ieee;
use ieee.std_logic_1164.all;

entity fa is 
port(
	signal A, B, Cin: in std_logic;
	signal Sum, Cout: out std_logic
	);
end entity;

architecture dataflow of fa is 
signal AB, ACin, BCin: std_logic;
begin
	AB <= A and B;
	ACin <= A and Cin;
	BCin <= B and Cin;
	Cout <= AB or ACin or BCin;
	Sum <= A xor B xor Cin;
end architecture;