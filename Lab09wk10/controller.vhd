-- ensure VHDL 2008 is selected in Quartus menu Assignments:Settings:Compiler Settings:VHDL Input
-- include ieee standard logic signal library
library ieee;
use ieee.std_logic_1164.all;
-- describe the functional block diagram symbol
-- use the system diagram on page 3 to help you identify signals, signal busses, and bus widths
entity CONTROLLER is
port( BCLR: in std_logic_vector(3 downto 0);
RDIR: out std_logic;
REN: out std_logic;
LEN: out std_logic;
LDIR: out std_logic;
BEEP: out std_logic;
HEX5CTRL: out std_logic_vector(5 downto 0);
HEX4CTRL: out std_logic_vector(5 downto 0);
HEX3CTRL: out std_logic_vector(5 downto 0);
HEX2CTRL: out std_logic_vector(5 downto 0);
HEX1CTRL: out std_logic_vector(5 downto 0);
HEX0CTRL: out std_logic_vector(5 downto 0)
);
end entity CONTROLLER;
-- describe signals and vectors using multiplexer with-select syntax
architecture MULTIPLEXER of CONTROLLER is
begin
 with BCLR select
 RDIR <= '1' when X"1"|X"3"|X"9"|X"B",
 '0' when others; -- don't cares and logic-0

 with BCLR select
 REN <= '0' when X"0"|X"2"|X"4"|X"5"|X"6"|X"7"|X"8",
 '1' when others;

 with BCLR select
 LEN <= '0' when X"0"|X"1"|X"4"|X"5"|X"6"|X"7"|X"8",
 '1' when others;

 with BCLR select
 LDIR <= '1' when X"2"|X"3"|X"A"|X"B",
 '0' when others;
 
 with BCLR select
 BEEP <= '1' when X"0"|X"4"|X"5"|X"6"|X"7",
 '0' when others;

 with BCLR select
 HEX5CTRL <= 6X"24" when X"2"|X"3",
 6X"1C" when X"9"|X"A",
 6X"3F" when others;

 with BCLR select
 HEX4CTRL <= 6X"11" when X"0",
 6X"1D" when X"1"|X"2",
 6X"16" when X"4"|X"5"|X"6"|X"7",
 6X"20" when X"8",
 6X"19" when X"9"|X"A",
 6X"0A" when X"B",
 6X"0B" when X"C"|X"D"|X"E"|X"F",
 6X"3F" when others;

 with BCLR select
 HEX3CTRL <= 6X"0E" when X"0",
 6X"1E" when X"1"|X"2",
 6x"10" when X"3",
 6X"18" when X"4"|X"5"|X"6"|X"7",
 6X"0A" when X"8",
 6X"12" when X"9"|X"A",
 6X"11" when X"B",
 6X"0A" when X"C"|X"D"|X"E"|X"F",
 6X"3F" when others;

 with BCLR select
 HEX2CTRL <= 6X"15" when X"0",
 6X"1B" when X"1"|X"2",
 6x"18" when X"3",
 6X"1F" when X"4"|X"5"|X"6"|X"7",
 6X"12" when X"8",
 6X"17" when X"9"|X"A",
 6X"0E" when X"B",
 6X"0C" when X"C"|X"D"|X"E"|X"F",
 6X"3F" when others;

 with BCLR select
 HEX1CTRL <= 6X"19" when X"0",
 6X"17" when X"1"|X"2",
 6X"0E" when X"4"|X"5"|X"6"|X"7",
 6X"1D" when X"8",
 6X"25" when X"9"|X"A",
 6X"0A" when X"B",
 6X"14" when X"C"|X"D"|X"E"|X"F",
 6X"3F" when others;

 with BCLR select
 HEX0CTRL <= 6X"24" when X"1"|X"3",
 6X"15" when X"9",
 6X"1B" when X"A",
 6X"0D" when X"B",
 6X"3F" when others;
 
end architecture MULTIPLEXER;