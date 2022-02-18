Disassembler v2 is a VB6 program to disassemble C64 programs in PRG format.
PRG is a standard format for C64 programs and other data.

The layout is simple:
  First two bytes = start address in LO, HI format (the address to which the rest of the file will be loaded)
  Following bytes = Data bytes (Opcodes, operands and data bytes for machine code programs)

This is the main tool I use for my disassembling of C64 games.

Disassembler v2 has these features:
  - Automatic seperation between subroutines
  - Automatic generation of labels (used by JMP, JSR and Branch instructions)
  - Automatic commenting for known addresses (VIC II, SID and more)
  - Automatic commenting of bit manipulations of memory locations

The zip-file contains the entire VB 6.0 project.
After extracting rename the .xe file to .exe

To run start Disassembler v2.exe and first choose options:
  Assembly             - When checked the assembly (raw bytes) will be shown
  Hex mode             - When checked addresses will be shown in Hexadecimal
  Find start address   - Attempts to locate the start address of the game
                         Slow and usually doesn't work!
                         If you enter a specific address in the field, only the score for that address will be calculated
  Undocumented Opcodes - When checked undocumented opcodes are interpreted as opcodes and not data

After setting options use the menu to navigate to and select a PRG file.
Immediately after selecting the file, disassembling will begin.
Disassembler v2 outputs the following files in the same folder where Disassembler.exe file is:

  Disassembly.txt - The main file. The disassembly itself
  Labels.txt      - A list of all the labels generated
  diss2.log       - When Find start address is selected this file will contain each address and its score
                    (The higher the score the more likely it is to be the start address)

The challenge for any disassembler is to distinguish between code and data.
In C64 games code and data is jumbled together all over the place.
Dissassembler v2 uses the bytes before and after a potential instruction to decide if it really is an instruction.
Usually there is some manual corrections needed afterwards.
