# Start Relay `Alice` node
./target/release/polkadot \
--alice \
--validator \
--base-path /tmp/relay/alice \
--chain res/realis-testnet-raw.json \
--port 30333 \
--ws-port 9944 \
--rpc-cors all