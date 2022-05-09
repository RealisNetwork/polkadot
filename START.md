#

## Create chain-spec

```
    ./target/release/polkadot build-spec > chain-spec-plain.json
```

Clear field bootnodes like this: ` "bootNodes": [],`

```
    ./target/release/polkadot build-spec --chain chain-spec-plain.json --raw > chain-spec-2.json
```

```
    # Start Relay `Alice` node
    ./target/release/polkadot \
    --alice \
    --validator \
    --base-path /tmp/relay/alice \
    --chain chain-spec-2.json \
    --port 30333 \
    --ws-port 9944
```

Get node identity from field `🏷 Local node identity is: <Your local identity>`.

After that you can start the second node.

```
    # Start Relay 'Bob' node
    ./target/release/polkadot \
    --bob \
    --validator \
    --base-path /tmp/relay/bob \
    --chain chain-spec-2.json \
    --bootnodes /ip4/127.0.0.1/tcp/30333/p2p/ <Alice local identity> \
    --port 30334 \
    --ws-port 9945
```

### Starting additional validators (optional)

```
    # Start other nodes
    ./target/release/polkadot \
    --<name of the node> \
    --validator \
    --base-path /tmp/relay/<name of the node> \
    --chain chain-spec-2.json \
    --bootnodes /ip4/127.0.0.1/tcp/30333/p2p/<Alice local identity> \
    --port 30335 \
    --ws-port 9946
```
