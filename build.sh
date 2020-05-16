#!/bin/sh

cargo build --verbose && \
cargo test --verbose --lib && \

### BIP32 ###
cd bip32 && \
cargo --verbose build && \
cargo --verbose build --target wasm32-unknown-unknown && \

# default features covered by workspace-level tests
cargo test --verbose \

### PSBT ###
cd ../psbt && \
cargo --verbose build && \
cargo --verbose build --target wasm32-unknown-unknown && \

### BTC_WASM ###
cd ../bitcoin-wasm && \
cargo build --verbose && \
cargo test --verbose && \

cargo build --verbose --target wasm32-unknown-unknown && \

### Ledger ###
cd ../ledger && \
# #  broken on travis
# cargo build --verbose && \
cargo build --verbose --target wasm32-unknown-unknown
