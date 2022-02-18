This is my "own" game. The goal is to convert a level of Rayman (for PlayStation) to C64.

The scroller has been built completely from scratch.
It scrolls in 8 directions with full colour and a parallax effect.
Scrolling also depends on which way you are facing.

There are no enemies yet, but there will be plenty later.
Since I have added gravity, you can not go very far without something to jump unto.
So I have added a lot of clouds. They will be replaced by moving clouds (sprites).

To play load "Rayman - CD - JG.prg" into CCS64.
It will not load into VICE, because the PRG file extends into BASIC and KERNAL areas.
CCS64 and VICE does not load PRG files in the same way.
Later I will write a loading routine, so that it also works in VICE.
