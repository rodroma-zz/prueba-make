install:
	make -C ./src install
test:
	make -C ./tests test
	make -C ./tests run
run:
	make -C ./src install
	make -C ./src run
