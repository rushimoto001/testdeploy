#!/usr/bin/env bash
git clone https://github.com/weebzone/WZML/ && cd WZML
git clone https://${SECRET_TOKEN}@github.com/rushimoto001/files -b weeb tmp
cd tmp
rm -rf .git
cp -r . ..
cd -
rm -rf tmp
while true; do echo 'alive'; sleep 2s; done &
python3 update.py
python3 -m bot & sleep 2m && kill $!
