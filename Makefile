CFLAGS = -Wall -O2
SHAREFLAGS = -fpic
LDFLAGS = -shared
TYPEWRITERFLAGS = -I$(INCLUDE) -ltypewriter
PREFIX = /usr
LIB = $(PREFIX)/lib
INCLUDE = $(PREFIX)/include
PKGCONFIG = $(PREFIX)/share/pkgconfig

all: libtypewriter.so

libtypewriter.so: libtypewriter.c
	$(CC) $(CFLAGS) $(SHAREFLAGS) -o libtypewriter.so $(LDFLAGS) libtypewriter.c

install:
	install -vm755 libtypewriter.so $(LIB)
	install -vm755 libtypewriter.h  $(INCLUDE)
	install -vm755 libtypewriter.pc $(PKGCONFIG)
	ldconfig

check: test
	$(CC) $(CFLAGS) $(TYPEWRITERFLAGS) -o test test.c
	./test

