# Start Relay `Alice` node
./target/release/polkadot \
--validator \
--base-path /tmp/relay/alice \
--chain res/polkadot-local-raw.json \
--port 30333 \
--ws-port 9944 \
--rpc-cors all