# Programing exercise

Copyright 2020 - Monaco F. J. <monaco@usp.br>
This is Free Software distributed under GNU GPL v3 as detailed in
https://www.gnu.org/licenses/gpl-3.0.txt

## Quick info

For the 2020 course on System Software.

Please, refer to file INSTRUCTIONS.

### Used commands

This was used before creation of the lib, linking the components directly to the main compilation unit.
gcc ex2.c writef.h writef.c -m32 -fno-pic -o ex2-c-nolib

This was used to generate the object of the function compilation unit
gcc -c -m32 writef.h writef.c

Create the static lib
ar -crs libex2.a writef.o

Create the executable binary using the static library
gcc ex2.c -L. -lex2 -m32 -fno-pic -o ex2-c-slib
