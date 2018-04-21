CC=gcc
CFGLAGS=-Wall -g
INCLUDEDIR=include
PROGNAME=prueba

install:
	$(CC) $(PROGNAME).c $(INCLUDEDIR)/*.c -o $(PROGNAME) $(CFLAGS) -I$(INCLUDEDIR)
run:
	./$(PROGNAME)
clean:
	rm $(PROGNAME)
	rm tests/tests
test:
	make -C ./tests test
