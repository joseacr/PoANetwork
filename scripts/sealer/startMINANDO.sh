#!/bin/bash
set -u
set -e

echo "[*] Arrancamos Geth con Bootnode y sin consola pero MINANDO"
nohup sudo ./go-ethereum/build/bin/geth --datadir=/var/data --mine --minerthreads 2 --rpc --unlock 0 --password ./pass.txt --bootnodes enode://b7240fede7b986b7bb72e0277c2a9f35621d3dfc1ba2897fdbdd220ef67a28440f035100f77b17dc43b332cbd0e68a8c867e8bffcfb375636c6a41b1723fa628@10.16.10.77:30301 &

echo "[*] Ahora podemos hacer un geth attach ipc mine console... Es decir:"
echo "sudo ./go-ethereum/build/bin/geth attach ipc:/var/data/geth.ipc"

set +u
set +e

