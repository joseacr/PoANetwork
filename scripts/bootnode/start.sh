#!/bin/bash
set -u
set -e

echo "[*] Arrancamos el Bootnode"
nohup ./go-ethereum/build/bin/bootnode --nodekey=boot.key &

echo "[*] Arrancamos Geth con Bootnode y sin consola"
nohup sudo ./go-ethereum/build/bin/geth --datadir=/var/data --rpc --bootnodes enode://b7240fede7b986b7bb72e0277c2a9f35621d3dfc1ba2897fdbdd220ef67a28440f035100f77b17dc43b332cbd0e68a8c867e8bffcfb375636c6a41b1723fa628@10.16.10.77:30301 &

echo "[*] Ahora podemos hacer un sudo ./go-ethereum/build/bin/geth attach ipc:/var/data/geth.ipc ..."

set +u
set +e
