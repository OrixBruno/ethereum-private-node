#GETH Ethereum
##Configuração de servidor

**Acessando console via IPC**
``` console
geth attach <volumeaddress>/geth.ipc
```

**Comandos básicos do console**
``` javascript
// Criar conta
personal.newAccount("<password>")
// Desbloquear conta
personal.unlockAccount("<address>")
```

**Conectando Ethereum Wallet via RPC**
``` bash
Wallet --rpc http://127.0.0.1:8545
```
**Iniciando mineração no nó privado - via console geth**

``` javascript
// Selecionando conta base para mineração
miner.setEtherbase("0x5b2d132b50deb673dc93b971180c5a9bfa049dad")
// Desbloqueando conta base para mineração
personal.unlockAccount("0x5b2d132b50deb673dc93b971180c5a9bfa049dad")
//Startando mineração
miner.start(<quantidade nucleos para mineracao>)
```
