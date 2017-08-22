all: website-run

rust:
	cd repo && cargo build --release

rust-run:
	cd repo && cargo run --release

wasm:
	cd repo && cargo build --release --target wasm32-unknown-emscripten

asmjs:
	cd repo && cargo build --release --target asmjs-unknown-emscripten

website: wasm asmjs
	cd repo/website && npm run build-release

website-run: wasm asmjs
	cd repo/website && npm run start
