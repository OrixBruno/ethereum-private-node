rm -rf devInit/geth/chainData
rm -rf devInit/geth/dapp
rm -rf devInit/geth/nodes
rm -rf devInit/geth/nodekey

geth --datadir devInit init devInit/genesis.json \
& geth --datadir devInit --rpc --networkid=39318 --maxpeers=2  --rpccorsdomain "*" --rpcaddr "0.0.0.0" --rpcapi "eth,web3,personal,net,miner,admin"