This is a VB6 program to convert a binary file of size 2048 bytes to a file with character set images as comments.
I use it as a tool to assist in my disassembling of C64 games.

The zip-fil contains the entire VB 6.0 project.
After extracting rename the .xe file to .exe

To run start PRG to Bin to Charset.exe and use the menu to navigate to and select a binary file (the character set).
There is not address in the binary input file so you need to enter the location of the character set.
That way the output will have the right addresses.
Then click the Make DATA button.

The program creates a file in the same folder where the .exe file is.
The output file interpretes the characters as Hires and Multicolor.
Then you can copy the output to your disassembly file.

In order to make a binary file to you for input do this:

  1) Load the game into CCS64
  2) Enter the Machine code monitor (via F10)
  3) Select Bank 0 (all RAM) by giving the command:
     *0
  4) Save the character set to file. If it begins at C000, the command is:
     S "CHARSET.BIN" C000 C800
     The file will be placed in the folder where CCS64.exe is.
     The only difference between the "S" and the "SP" command is that
     "SP" (Save Program) saves the 2 byte address. We don't want this here.
