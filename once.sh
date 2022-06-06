#!/bin/bash
set -e

LOWERNAME="$1"
UPPERNAME=$(sed -r 's/(^|-)(\w)/\U\2/g' <<<"$LOWERNAME")

sed -i "s/Query/${UPPERNAME}/g" $(find . -type f -not -path "./node_modules/*" -not -path "./.git/*" -not -path ./once.sh)
sed -i "s/query/${LOWERNAME}/g" $(find . -type f -not -path "./node_modules/*" -not -path "./.git/*" -not -path ./once.sh)
rm -f ./once.sh
