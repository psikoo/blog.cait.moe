#!/bin/bash

echo "> blog"
git pull
chmod +x ./build.sh
fileNum=$(sudo ls ./entries | wc -l)
touch ./entries/counter.txt
chmod +666 ./entries/counter.txt
echo $fileNum > ./entries/counter.txt
rm -rf ./out
mkdir ./out
cp -r ./ ./out/