#!/bin/sh
echo " #####   #####   ##  #     # ";
echo "#######  ##  ##  ##   #   #  ";
echo "##   ##  ##  ##  ##    # #   ";
echo "##   ##  #####   ##     #    ";
echo "##   ##  ####    ##    # #   ";
echo "#######  ## ##   ##   #   #  ";
echo " #####   ##  ##  ##  #     # ";
printf "\r"

echo ""
echo -ne '#####                     (33%)\r'
sleep 1
echo -ne '#############             (66%)\r'
sleep 1
echo -ne '#######################   (100%)\r'
echo -ne '\n'

echo "starting node ..."

rm -rf node/geth/chaindata
rm -rf node/geth/dapp
rm -rf node/geth/nodes
rm -rf node/geth/nodekey

geth --datadir node init node/genesis.json \
& geth --datadir node --rpc --networkid=39318 --maxpeers=2  --rpccorsdomain "*" --rpcaddr "0.0.0.0" --rpcapi "eth,web3,personal,net,miner,admin"