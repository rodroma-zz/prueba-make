install:
	make -C ./main install
test:
	make -C ./tests test
run:
	make -C ./main install
	make -C ./main run
