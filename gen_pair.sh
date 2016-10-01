#!/bin/bash

ASSET1=$2
ASSET2=$3
asset1="${ASSET1,,}"
asset2="${ASSET2,,}"
prefix=$1
file="config_${prefix}_${asset1}_${asset2}.js"
run="run_${prefix}_${asset1}_${asset2}.sh"

cat .config_template.js | sed -e "s/prefix/$prefix/g" | sed -e "s/ASSET1/$ASSET1/g" | sed -e "s/ASSET2/$ASSET2/g" > $file
cat .run_gen.sh | sed -e "s/prefix/$prefix/g" | sed -e "s/asset1/${asset1}/g" | sed -e "s/asset2/${asset2}/g" > $run
chmod +x $run
echo "screen -dmS ${asset1}-${asset2} ./${run}" >> start.sh
