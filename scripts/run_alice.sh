# Start Relay `Alice` node
./target/release/polkadot \
--alice \
--validator \
--base-path /tmp/relay/alice \
--chain chain-spec.json \
--port 30333 \
--ws-port 9944