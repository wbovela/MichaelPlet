This is a C# program to locate C64 sprites in a PRG file.
I use it as a tool to assist in my disassembling of C64 games.

The zip-fil contains the entire VB 6.0 project.
After extracting rename the .xe file to .exe

To run start Find Sprites.exe and use the menu to navigate to and select a PRG file.
Then use the scollbar to scroll through memory.
Now the sprites are shown in Hires and in Multicolor. The addresses are shown in hex and decimal.


1)      You need to put the 3 files in the C:\Windows\SysWOW64 folder.

 

2)      Rename the file extensions like this:

.ca to .oca

.CX to .OCX

.EP to .DEP

 

3)      Then you need to register the .ocx in a CMD (Run as Administrator):

Navigate to the SysWOW64 folder in the CMD window and type:

 

regsvr32 comdlg32.ocx
