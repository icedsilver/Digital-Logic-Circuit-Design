LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY rs_latch IS
    PORT (
        s  : IN  std_logic;
        r  : IN  std_logic;
        q  : OUT std_logic;
        nq : OUT std_logic
    );
END rs_latch;

ARCHITECTURE bhv OF rs_latch IS
    SIGNAL q_int, nq_int : std_logic;
BEGIN
    q_int  <= r NOR nq_int;
    nq_int <= s NOR q_int;
    q      <= q_int;
    nq     <= nq_int;
END bhv;