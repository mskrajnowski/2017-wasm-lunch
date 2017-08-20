all: c cpp rust

c: hello.c
	emcc hello.c -o hello.c.js \
		-O2 \
		-Wall \
		-s WASM=1 \
		-s MODULARIZE=1 \
		-s EXPORT_NAME="'CModule'"
	wasm2wast hello.c.wasm > hello.c.wast

cpp: hello.cpp
	emcc hello.cpp -o hello.cpp.js \
		-O2 \
		-Wall \
		-s WASM=1 \
		-s MODULARIZE=1 \
		-s EXPORT_NAME="'CppModule'"
	wasm2wast hello.cpp.wasm > hello.cpp.wast

rust: hello.rs
	rustc hello.rs -o hello.rs.js \
		-O \
		--target=wasm32-unknown-emscripten \
		-C link-args="-s MODULARIZE=1 -s EXPORT_NAME='RustModule'"
	rm hello.rs.asm.js
	wasm2wast hello.rs.wasm > hello.rs.wast

clean:
	rm -f hello.*.js hello.*.wasm hello.*.wast
