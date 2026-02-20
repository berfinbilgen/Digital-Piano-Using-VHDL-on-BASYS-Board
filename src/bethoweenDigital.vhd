library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity bethoweenDigital is
generic (
-- Note's period at th octave*internal frequency of BASYS3
a0 : integer := 3636364;
Ba0: integer := 3852593; -- Ba0 means A0 Flat
b0 : integer := 3240441;
Bb0: integer:= 3432269;
c0 : integer := 6116208;
d0 : integer := 5449591;
Bd0: integer := 5770640;
e0 : integer := 4854369;
Be0: integer := 5142594;
f0 : integer := 4580852;
g0 : integer := 4081634;
Bg0: integer := 432439);

Port (
clock : in STD_LOGIC;
n_out : out STD_LOGIC;
note : in std_logic_vector (7 downto 0);
oct: in std_logic_vector (3 downto 0);
anode: out std_logic_vector (3 downto 0);
sgmt: out std_logic_vector (6 downto 0));

end bethoweenDigital;

architecture dp of bethoweenDigital is
-- For 7 Segment Display
signal perofv: std_logic_vector (15 downto 0) := "0000000000000000" ;
signal sgmt1: std_logic_vector (6 downto 0);
signal sgmt2: std_logic_vector (6 downto 0);
signal sgmt3: std_logic_vector (6 downto 0);

-- For output frequency
signal const: integer := 0;
signal n_wave: std_logic := '0';
signal n_select: integer := 0;
signal power_oct: integer := 0;

begin

with note select
n_select <= c0 when "10111111",
d0 when "11011111",
e0 when "11101111",
f0 when "11110111",
g0 when "11111011",
a0 when "11111101",
b0 when "11111110",
Bb0 when "01111110",
Ba0 when "01111101",
Bd0 when "01011111",
Be0 when "01101111",
Bg0 when "01111011",
0 when others;

with oct select
-- 2^n, ratio between same notes different octaves, determines icreasing ratio of frequency,
-- therefore period.
power_oct <= 1 when "0000",
2 when "0001",
4 when "0010",
8 when "0011",
16 when "0100",
32 when "0101",
64 when "0110",
128 when "0111",
256 when "1000",
0 when others;

process(clock)
begin
-- This part determines period of the clock, therefore determines heard frequency which
-- corresponds desired note. (pvm)
if rising_edge(clock) then
perofv <= perofv + 1;
if const >= n_select then
n_wave <= not n_wave;
const <= 0;
else
const <= const + power_oct;
end if;
end if;
end process;

with oct select
sgmt1 <= "0000001" when "0000", --0th octave ,segment displays 0
"1001111" when "0001",
"0010010" when "0010",
"0000110" when "0011",
"1001100" when "0100",
"0100100" when "0101",
"0100000" when "0110",
"0001101" when "0111",
"0000000" when "1000",
"1111111" when others;

with note(6 downto 0) select
sgmt2 <= "0110001" when "0111111" ,
"1000010" when "1011111",
"0110000" when "1101111",
"0111000" when "1110111",
"0000100" when "1111011",
"0001000" when "1111101",
"1100000" when "1111110",
"1111111" when others;

with note(7 downto 7)select
sgmt3 <= "1100000" when "0",
"1111111" when others;

process(perofv (15 downto 14))
-- persistence of vision in order to display several segments at the same time(!)
begin
case perofv (15 downto 14) is
when "01" => anode <= "1110";
when "10" => anode <= "1101";
when "00" => anode <= "1011";
when others => anode <= "1111";
end case;

case perofv (15 downto 14) is
when "01" => sgmt <= sgmt1;
when "10" => sgmt <= sgmt2;
when "00" => sgmt <= sgmt3;
when others => sgmt <= "1111111";
end case;
end process;

n_out <= n_wave;

end dp;
