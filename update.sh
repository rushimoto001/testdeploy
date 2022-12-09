#!/usr/bin/env bash
while true; do echo 'update'; sleep 2s; done
ls
sleep 180m && git clone https://${SECRET_TOKEN}@github.com/rushimoto001/testdeploy -b circleci-project-setup gitpush && cd gitpush && git config --global user.email "rushimoto001@gmail.com" && git config --global user.name "rushimoto001" && git config --global color.ui true && perl -i -pe '/^ver=/ && s/(\d+)/$&+1/e' count.txt && git add . && git commit --allow-empty -m "Update Software Version Count on $(date -u +"%D %T%p")" && git push -q
