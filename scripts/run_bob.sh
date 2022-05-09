./target/release/polkadot \
--bob \
--validator \
--base-path /tmp/relay/bob \
--chain customSpec.json \
--bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWDsfxPHozRU8twkvKf9mRyFniaHD8wxCNMwrRAxxwiS6S \
--port 30334 \
--ws-port 9945 \
--rpc-cors all