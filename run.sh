#!/bin/bash

docker compose -f database.yaml down

echo "Sleep 10s before clean data"
sleep 10

sudo rm -rf keyfile
sudo rm -rf db/ 
sudo rm -rf config/

echo "Data clean"
sleep 5

openssl rand -base64 758 > keyfile
sudo chmod 400 keyfile
sudo chown 999:999 keyfile
docker compose -f database.yaml up -d

echo "Sleep 10s before docker completed start"
sleep 10
echo "initial replica"

docker exec -t mongo bash /scripts/mongo-init.sh

echo "Sleep 10s before create users"
sleep 10

docker exec -t mongo bash /scripts/create-user.sh