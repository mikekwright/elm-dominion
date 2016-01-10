all: clean compile

compile:
	elm make --output build/elm.js src/DominionApp.elm
	cp -r static/* build/

clean:
	rm -rf build/*


