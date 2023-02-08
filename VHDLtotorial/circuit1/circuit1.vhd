entity circuit1 is 
port(
	signal A: in bit;
	signal B: in bit;
	signal F: out bit
	);
end entity;

architecture dataflow of circuit1 is
begin

F <= A or B;

end architecture;