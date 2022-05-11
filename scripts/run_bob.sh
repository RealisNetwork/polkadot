./target/release/polkadot \
--bob \
--validator \
--base-path /tmp/relay/bob \
--chain res/polkadot-local-raw.json \
--bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWNwmYwEpw5j2JvTXWn1GwrQeCiwxfqGejWfWMmaWLFbuA \
--port 30334 \
--ws-port 9945 \
--rpc-cors all