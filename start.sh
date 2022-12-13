#!/usr/bin/env bash
mkdir /root/project/downloads
chmod 777 /root/project/downloads
mkdir downloads
chmod 777 downloads
git clone https://github.com/weebzone/WZML/ && cd WZML
git clone https://${SECRET_TOKEN}@github.com/rushimoto001/files -b weeb tmp
cd tmp
rm -rf .git
cp -r . ..
cd -
rm -rf tmp
python3 update.py
python3 -m bot & sleep 55m && kill $!
