#!/bin/bash
set -e

cargo build
cargo run -- db migrate
