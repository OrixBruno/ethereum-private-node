# SUBIR GETH MANUALMENTE
# rm -rf devChain/chainData
# rm -rf devChain/dapp
# rm -rf devChain/nodes
# rm -rf devchain/nodekey

# ./geth  --datadir=devChain init genesis_dev.json
# ./geth  --rpc --networkid=39318 --maxpeers=0 --datadir=devChain  --rpccorsdomain "*" --rpcaddr "0.0.0.0" --rpcapi "eth,web3,personal,net,miner,admin"  --verbosity 0 console  

# SUBIR GET MANUALMENTE
docker-compose up -d --build geth