LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY jk_ff IS
    PORT (
        clk : IN  std_logic;
        j   : IN  std_logic;
        k   : IN  std_logic;
        q   : OUT std_logic
    );
END jk_ff;

ARCHITECTURE bhv OF jk_ff IS
    SIGNAL q_internal : std_logic := '0';
BEGIN
    q <= q_internal;

    PROCESS (clk)
    BEGIN
        IF rising_edge(clk) THEN
            IF (j = '0' AND k = '0') THEN
                q_internal <= q_internal;     -- Hold
            ELSIF (j = '0' AND k = '1') THEN
                q_internal <= '0';            -- Reset
            ELSIF (j = '1' AND k = '0') THEN
                q_internal <= '1';            -- Set
            ELSIF (j = '1' AND k = '1') THEN
                q_internal <= NOT q_internal; -- Toggle
            END IF;
        END IF;
    END PROCESS;
END bhv;
