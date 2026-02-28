# How to write a byte (std_logic_vector 8 bits) to a file

Here one uses the write VHDL'93 built in function with a file of type character.
To do the conversion from the integer value 0-255 to the corresponding character, character'val(x) is used.
This way one gets a binary file.
