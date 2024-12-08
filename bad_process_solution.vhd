```vhdl
ENTITY good_process IS
  PORT (clk : IN  STD_LOGIC;
        a : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        b : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END ENTITY good_process;

ARCHITECTURE behavioral OF good_process IS
BEGIN
  PROCESS (clk) 
  BEGIN
    IF RISING_EDGE(clk) THEN
      IF a = "11111111" THEN
        b <= "11111111";
      ELSE
        b <= a + 1;
      END IF;
    END IF;
  END PROCESS;
END ARCHITECTURE behavioral;
```