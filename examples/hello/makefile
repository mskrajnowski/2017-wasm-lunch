all: c cpp rust

c: hello.c
	emcc hello.c -o hello.c.js \
		-Wall \
		-s WASM=1 \
		-s MODULARIZE=1 \
		-s EXPORT_NAME="'CModule'"

cpp: hello.cpp
	emcc hello.cpp -o hello.cpp.js \
		-Wall \
		-s WASM=1 \
		-s MODULARIZE=1 \
		-s EXPORT_NAME="'CppModule'"

rust: hello.rs
	rustc hello.rs -o hello.rs.js \
		--target=wasm32-unknown-emscripten \
		-C link-args="-s MODULARIZE=1 -s EXPORT_NAME='RustModule'"
	rm hello.rs.asm.js

clean:
	rm -f hello.*.js hello.*.wasm
