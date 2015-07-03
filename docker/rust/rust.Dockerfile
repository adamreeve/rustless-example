FROM ubuntu:14.04

RUN apt-get update && apt-get install -y curl binutils build-essential openssl libssl-dev

ENV SHELL /bin/bash

RUN curl -f -L https://static.rust-lang.org/rustup.sh -O
RUN sh rustup.sh --channel=nightly --disable-sudo --yes && rm rustup.sh

ENV LD_LIBRARY_PATH /usr/local/lib
