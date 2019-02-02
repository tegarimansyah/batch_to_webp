#!/usr/bin/env bash

dirlist=(`ls *.$1`)
mkdir webp
cd webp
for i in ${dirlist[*]}
do
    name="${i%.*}"
    cwebp -q 75 '../'$i -o $name.webp
done