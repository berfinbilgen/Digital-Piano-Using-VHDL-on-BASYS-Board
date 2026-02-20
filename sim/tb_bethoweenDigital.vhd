library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_bethoweenDigital is
end tb_bethoweenDigital;

architecture sim of tb_bethoweenDigital is
 component bethoweenDigital
 port (
 clock : in std_logic;
 n_out : out std_logic;
 note : in std_logic_vector(7 downto 0);
 oct : in std_logic_vector(3 downto 0);
 anode : out std_logic_vector(3 downto 0);
 sgmt : out std_logic_vector(6 downto 0)
 );
 end component;

 signal clock : std_logic := '0';
 signal note : std_logic_vector(7 downto 0) := (others => '0');
 signal oct : std_logic_vector(3 downto 0) := (others => '0');
 signal n_out : std_logic;
 signal anode : std_logic_vector(3 downto 0);
 signal sgmt : std_logic_vector(6 downto 0);

 constant clock_period : time := 10 ns;

begin
 comp: bethoweenDigital port map (
 clock => clock,
 n_out => n_out,
 note => note,
 oct => oct,
 anode => anode,
 sgmt => sgmt
 );

 clock_process : process
 begin
 clock <= '0';
 wait for clock_period/2;
 clock <= '1';
 wait for clock_period/2;
 end process;

 tb: process
 begin -- we will simulate when we press B0 note on octave 0
 note <= "11111110"; -- B0 note binary code from main code
 oct <= "0000"; -- 0th octave
 wait for 100 ns;
 wait;
 end process;

end sim;
