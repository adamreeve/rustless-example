#!/bin/bash
set -e

cargo build
cargo run -- run --ip=0.0.0.0 --port=8080
