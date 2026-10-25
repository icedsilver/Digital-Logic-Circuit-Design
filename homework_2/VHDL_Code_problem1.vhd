library ieee;
use ieee.std_logic_1164.all;

entity problem1 is
    port (
        a    : in  std_logic;
        b    : in  std_logic;
        c    : in  std_logic;
        d    : in  std_logic;
        out1 : out std_logic;
        out2 : out std_logic
    );
end problem1;

architecture behavioral of problem1 is
begin
    out1 <= a and b and c and d;
    out2 <= a or b or c or d;
end behavioral;
