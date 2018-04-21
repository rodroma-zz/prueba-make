CC=gcc
CFGLAGS=-Wall -g
PROGNAME=prueba

install:
	$(CC) $(PROGNAME).c src/*.c -o $(PROGNAME) $(CFLAGS) -Isrc
run:
	./$(PROGNAME)
test:
	make -C ./tests test
