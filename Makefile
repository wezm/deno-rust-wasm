default: build/deno_rust_wasm.js

target/wasm32-unknown-unknown/release/deno_rust_wasm.wasm: src/*.rs Cargo.toml
	cargo build --release --target wasm32-unknown-unknown

build/deno_rust_wasm.js: target/wasm32-unknown-unknown/release/deno_rust_wasm.wasm
	wasm-bindgen target/wasm32-unknown-unknown/release/deno_rust_wasm.wasm --target deno --out-dir build

run: build/deno_rust_wasm.js
	deno run --allow-read --allow-net --allow-env src/index.ts

test: build/deno_rust_wasm.js
	deno test --allow-read --allow-net tests/integration.ts

.PHONY: run test
