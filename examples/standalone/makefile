all: add log

add: add.c
	emcc add.c -o add.wasm \
		-O2 \
		-Wall \
		-s WASM=1 \
		-s SIDE_MODULE=1
	wasm2wast add.wasm > add.wast

log: log.c
	emcc log.c -o log.wasm \
		-O2 \
		-Wall \
		-s WASM=1 \
		-s SIDE_MODULE=1
	wasm2wast log.wasm > log.wast

clean:
	rm -f *.wasm *.wast
