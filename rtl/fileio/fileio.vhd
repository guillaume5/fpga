----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.02.2026 22:03:31
-- Design Name: 
-- Module Name: fileio - Behavioral
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


package fileio is

  type byte_file is file of character;
  
--  definitions: functions, ...
  procedure write_byte(file fh : byte_file; slv : std_logic_vector(7 downto 0));

end package fileio;

package body fileio is

  procedure write_byte(file fh : byte_file; slv : std_logic_vector(7 downto 0)) is
  begin
    write(fh, character'val(conv_integer(unsigned(slv))));
  end procedure write_byte;
  
end package body fileio;
