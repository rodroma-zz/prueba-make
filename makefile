CC=gcc
CFGLAGS=-Wall -g
INCLUDEDIR=include
PROGNAME=prueba

.PHONY: install

default:
	make install --silent
install:
	$(CC) $(PROGNAME).c $(INCLUDEDIR)/*.c -o $(PROGNAME) $(CFLAGS) -I$(INCLUDEDIR)
run:
	./$(PROGNAME)
clean:
	rm -f $(PROGNAME)
	rm -f tests
test:
	$(CC) $(CFLAGS) -o tests tests.c $(INCLUDEDIR)/*.c -lcspecs -I$(INCLUDEDIR)/
	./tests

