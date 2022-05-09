FROM ubuntu:18.04 as builder
RUN apt update && apt install curl build-essential libclang-dev clang git -y
RUN curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

RUN . $HOME/.cargo/env && \
    rustup install nightly-2021-10-20 && \
    rustup target add wasm32-unknown-unknown --toolchain nightly-2021-10-20

COPY . .
RUN . $HOME/.cargo/env && \
    cargo build --release

FROM ubuntu:20.04
RUN apt-get update && apt-get install ca-certificates -y && update-ca-certificates

RUN mkdir -p /realis-blockchain/data
WORKDIR /realis-blockchain
COPY chain-spec.json /realis-blockchain/chain-spec.json
COPY --from=builder ./target/release/polkadot /realis-blockchain/polkadot

ENTRYPOINT ["/bin/bash", "-c", \
            "./realis-blockchain/polkadot \
            --validator \
            --chain realis-blockchain/chain-spec.json \
            --port 30333 \
            --ws-port 9944"]