#!/usr/bin/env bash
git clone https://github.com/weebzone/WZML/ && cd WZML
git clone https://${SECRET_TOKEN}@github.com/rushimoto001/files -b weeb tmp
cd tmp
rm -rf .git
cp -r . ..
cd -
rm -rf tmp
sudo docker-compose up
sudo docker-compose up --build
sudo docker-compose start

