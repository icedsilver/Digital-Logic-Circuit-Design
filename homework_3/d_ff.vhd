LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_ff IS
    PORT (
        clk : IN  std_logic;
        d   : IN  std_logic;
        q   : OUT std_logic
    );
END d_ff;

ARCHITECTURE bhv OF d_ff IS
BEGIN
    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            q <= d;
        END IF;
    END PROCESS;
END bhv;
