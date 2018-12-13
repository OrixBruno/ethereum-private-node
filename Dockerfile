# versão do linux para imagem
FROM ubuntu:16.04

# descrições da imagem 
LABEL version="1.0"
LABEL maintainer="teste@gmail.com"

# setando variável de ambiente 
ENV DEBIAN_FRONTEND=noninteractive
# seta usuario do container
ENV USER=adm

# atualizando distro e instalando pacote de auxilio
RUN apt-get update && apt-get install --yes software-properties-common
# adicionando o repositorio da lib do ethereum
RUN add-apt-repository ppa:ethereum/ethereum
# atualiza os repositorios e instala o geth
RUN apt-get update && apt-get install --yes geth

# adiciona um usuario ao container
RUN adduser --disabled-login --gecos "" $USER

# copia a pasta com inicializacao do nó
COPY ./node /home/$USER/node
# seta permissao do usuario a pasta do nó
RUN chown -R $USER:$USER /home/$USER/node
# seta user default
USER $USER

# limpa os diretorios
RUN rm -rf /home/$USER/node/geth/chaindata
RUN rm -rf /home/$USER/node/geth/dapp
RUN rm -rf /home/$USER/node/geth/nodes
RUN rm -rf /home/$USER/node/geth/nodekey

# seleciona estação de trabalho
WORKDIR /home/$USER

# starta o nó na pasta criada com base no bloco genesis
RUN geth --datadir /home/$USER/node init /home/$USER/node/genesis.json

# expoe as portas padroes
EXPOSE 8545 8546 30303

# seta entrypoint da imagem
ENTRYPOINT geth --datadir /home/$USER/node --rpc --networkid=39318 --maxpeers=2  --rpccorsdomain "*" --rpcaddr "0.0.0.0" --rpcapi "eth,web3,personal,net,miner,admin"