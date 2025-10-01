#!/bin/bash

echo "> blog"
git pull
chmod +x ./build.sh
fileNum=$(sudo ls ./entries | wc -l)
sudo touch ./entries/counter.txt
sudo chmod +666 ./entries/counter.txt
sudo echo $fileNum > ./entries/counter.txt
rm -rf ./out
mkdir ./out
cp -r ./ ./out/