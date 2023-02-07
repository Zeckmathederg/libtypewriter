# libtypewriter
Gives typewriter effect that adds cool stdout output in C/C++ programs.

# How to install
A simple `make && make install` will install the library just fine.

The default prefix is /usr and defined on line 3 of Makefile.

# How to use
In the .c file, including libtypewriter.h will get you by.

To compile the program, use `gcc -I(includepath)/libtypewriter.h -ltypewriter` coming before all your arguments and source files.

