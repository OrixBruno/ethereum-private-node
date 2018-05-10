FROM ubuntu:16.04

LABEL version="1.0"
LABEL maintainer="teste@gmail.com"

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install --yes software-properties-common
RUN add-apt-repository ppa:ethereum/ethereum
RUN apt-get update && apt-get install --yes geth

RUN adduser --disabled-login --gecos "" orix

COPY devInit /home/orix/devInit
RUN chown -R orix:orix /home/orix/devInit
USER orix
WORKDIR /home/orix

RUN mkdir /home/orix/devchain
RUN geth --datadir /home/orix/devchain init /home/orix/devInit/genesis.json

EXPOSE 8545 8546 30303

ENTRYPOINT geth --datadir /home/orix/devchain --rpc --networkid=39318 --maxpeers=0  --rpccorsdomain "*" --rpcaddr "0.0.0.0" --rpcapi "eth,web3,personal,net,miner,admin"