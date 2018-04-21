CC=gcc
INCLUDEDIR=include
CFLAGS=-Wall -g -lcspecs -I../$(INCLUDEDIR)/

test:
	$(CC) $(CFLAGS) -o tests *.c ../$(INCLUDEDIR)/*.c
	./tests

