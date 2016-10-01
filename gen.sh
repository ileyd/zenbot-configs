#!/bin/bash

A1=$2
A2=$3
al1="${A1,,}"
al2="${A2,,}"
prefix=$1
file="config_${prefix}_${al1}_${al2}.js"
run="run_${prefix}_${al1}_${al2}.sh"

cat .config_${prefix}_template.js | sed -e "s/ASSET1/$A1/g" | sed -e "s/ASSET2/$A2/g" > $file
cat .run_gen.sh | sed -e "s/prefix/$prefix/g" | sed -e "s/asset1/${al1}/g" | sed -e "s/asset2/${al2}/g" > $run
echo "screen -dmS ${al1}-${al2} ./${run}" >> start.sh
chmod +x $run
