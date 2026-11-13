LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY d_ff_async IS
    PORT (
        clk : IN  std_logic;
        d   : IN  std_logic;
        clr : IN  std_logic;
        set : IN  std_logic;
        q   : OUT std_logic
    );
END d_ff_async;

ARCHITECTURE bhv OF d_ff_async IS
    SIGNAL q_int : std_logic := '0';
BEGIN
    q <= q_int;

    PROCESS (clk, clr, set)
    BEGIN
        -- 1순위: 비동기 Clear (클럭 무관 즉시 0)
        IF (clr = '1') THEN
            q_int <= '0';
        -- 2순위: 비동기 Set (클럭 무관 즉시 1)
        ELSIF (set = '1') THEN
            q_int <= '1';
        -- 3순위: 동기 D Flip-Flop 동작 (클럭 상승 에지)
        ELSIF rising_edge(clk) THEN
            q_int <= d;
        END IF;
    END PROCESS;
END bhv;
