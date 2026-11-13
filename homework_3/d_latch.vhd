LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_latch IS
    PORT (
        en : IN  std_logic;
        d  : IN  std_logic;
        q  : OUT std_logic
    );
END d_latch;

ARCHITECTURE bhv OF d_latch IS
BEGIN
    PROCESS (en, d)
    BEGIN
        IF (en = '1') THEN
            q <= d;
        END IF;
    END PROCESS;
END bhv;
