----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.02.2026 22:03:31
-- Design Name: 
-- Module Name: fileio_tb - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_arith.all;

library work;
use work.fileio.all;

entity fileio_tb is
--  Port ( );
end fileio_tb;

architecture Behavioral of fileio_tb is
  file fh : byte_file open write_mode is "data_file.bin";
  signal cnt : integer := 0;
  signal clk : std_logic := '0';
begin

-- 100MHz clock
process
begin
  clk <= not clk;
  wait for 5ns;
end process;

process (clk)
begin
  if rising_edge(clk) then
    --write(fh, NUL);
    write_byte(fh, conv_std_logic_vector(cnt,8));
    cnt <= cnt+1;
  end if;
end process;


end Behavioral;
