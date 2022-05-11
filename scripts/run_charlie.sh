./target/release/polkadot \
--charlie \
--validator \
--base-path /tmp/relay/charlie \
--chain customSpecRaw.json \
--bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWNwmYwEpw5j2JvTXWn1GwrQeCiwxfqGejWfWMmaWLFbuA \
--port 30335 \
--ws-port 9946 \
--rpc-cors all