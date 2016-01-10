all: clean compile

watch:
	./build watch

deploy: clean
	./build deploy

compile:
	./build build

clean:
	./build clean


