#!/bin/bash

echo "> blog"
git pull
chmod +x ./build.sh
touch ./entries/counter.txt
echo $(ls ./entries | wc -l) > ./entries/counter.txt
rm -rf ./out
rsync -Rr ./ ./out/