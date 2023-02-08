--3 bit finction x < 5
--Dahlgren 10/28

library ieee;
use ieee.std_logic_1164.all;

entity circuit4 is
port(
	x: in std_logic_vector(2 downto 0);
	F: out std_logic
);
end entity;

architecture dataflow of circuit4 is
begin

F <= (not x(2)) or ((not x(1)) and (not x(0)));

end architecture;