--comments
--always coment name date and description of circuit function
--Dahlgren 10_27 3 bit prime number detector

entity circuit2 is
port(
	signal A: in bit;
	signal B: in bit;
	signal C: in bit;
	signal Prime: out bit;
	signal F: out bit
	);
end entity;
	
architecture dataflow of circuit2 is

signal G0: bit;
signal G1: bit;
signal G2: bit;

begin
	G0 <= not A;
	G1 <= B and G0;
	Prime <= G1 or C;
	G2 <= '0';
	F <= G2;
end architecture;