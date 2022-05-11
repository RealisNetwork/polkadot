./target/release/polkadot \
--eve \
--validator \
--base-path /tmp/relay/eve \
--chain chain-spec.json \
--bootnodes /ip4/127.0.0.1/tcp/30333/p2p/12D3KooWM5Gfo2TByeGKjLAgc4YxDxBJyUehq2QHi2HmWLV2o2SB \
--port 30337 \
--ws-port 9948 \
--rpc-cors all