CFLAGS = -Wall -O2 -fpic
LDFLAGS = -shared
PREFIX = /usr
LIB = $(PREFIX)/lib
INCLUDE = $(PREFIX)/include
PKGCONFIG = $(PREFIX)/share/pkgconfig

all: libtypewriter.so

libtypewriter.so: libtypewriter.c
	$(CC) $(CFLAGS) -o libtypewriter.so $(LDFLAGS) libtypewriter.c

install:
	install -vm755 libtypewriter.so $(LIB)
	install -vm755 libtypewriter.h  $(INCLUDE)
	install -vm755 libtypewriter.pc $(PKGCONFIG)
	ldconfig
