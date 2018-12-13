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
personal.unlockAccount("<address>", "<password>")
```

**Conectando Ethereum Wallet via RPC**
``` bash
Wallet --rpc http://127.0.0.1:8545
```
**Iniciando mineração no nó privado - via console geth**

``` javascript
// Selecionando conta base para mineração
miner.setEtherbase("<address_hash>")
// Desbloqueando conta base para mineração
personal.unlockAccount("<address_hash>")
//Startando mineração
miner.start(<quantidade nucleos para mineracao>)
```
