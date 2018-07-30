#!/bin/bash
set -e

echo "[*] Paramos Geth"
sudo pkill -f geth

echo "[*] Paramos Bootnode"
sudo pkill -f bootnode

set +e

