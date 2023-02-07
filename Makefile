CFLAGS = -O2 -fpic
LDFLAGS = -shared
PREFIX = /usr
LIB = $(PREFIX)/lib
INCLUDE = $(PREFIX)/include

all: libtypewriter.so

libtypewriter.so: libtypewriter.c
	$(CC) $(CFLAGS) -o libtypewriter.so $(LDFLAGS) libtypewriter.c

install:
	install -vm755 libtypewriter.so $(LIB)
	install -vm755 libtypewriter.h  $(INCLUDE)
	ldconfig
