```vhdl
entity counter is
  Port ( clk : in  STD_LOGIC;
              rst : in  STD_LOGIC;
              count : out  integer range 0 to 15 );
end entity;

architecture behavioral of counter is

signal temp : integer range 0 to 15 := 0;
begin

process (clk, rst)
begin
  if (rst = '1') then
    temp <= 0;
  elsif (rising_edge(clk)) then
    temp <= temp + 1;
  end if;
end process;

count <= temp;

end architecture;
```