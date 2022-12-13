#!/usr/bin/env bash
git clone https://github.com/weebzone/WZML/ && cd WZML
git clone https://${SECRET_TOKEN}@github.com/rushimoto001/files -b weeb tmp
cd tmp
rm -rf .git
cp -r . ..
cd -
rm -rf tmp
while true; do echo 'alive'; sleep 2s; done &
sudo service docker start || service docker start
sudo docker ps || docker ps 
sudo dockerd || dockerd
sudo docker compose up --build || docker compose up --build
