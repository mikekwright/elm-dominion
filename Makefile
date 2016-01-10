all: clean compile

deploy: clean
	./build deploy

compile:
	./build build

clean:
	./build clean


