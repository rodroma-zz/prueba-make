CC=gcc
CFGLAGS=-Wall -g
INCLUDEDIR=include
PROGNAME=prueba

install:
	$(CC) $(PROGNAME).c $(INCLUDEDIR)/*.c -o $(PROGNAME) $(CFLAGS) -I$(INCLUDEDIR)
run:
	./$(PROGNAME)
test:
	make -C ./tests test
