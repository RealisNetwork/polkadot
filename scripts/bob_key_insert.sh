./target/release/polkadot key insert --base-path /tmp/relay/bob \
--chain chain-spec.json \
--scheme Sr25519 \
--suri "0x8b2fb92edf7bcf98d1682a45612cf0ca88607d3f5ada53ad82e93fc83c9cf867" \
--password-interactive \
--key-type aura

./target/release/polkadot key insert --base-path /tmp/relay/bob \
--chain chain-spec.json \
--scheme Ed25519 \
--suri "0x8b2fb92edf7bcf98d1682a45612cf0ca88607d3f5ada53ad82e93fc83c9cf867" \
--password-interactive \
--key-type gran