#!/bin/bash

path="${2}_res"
pwd=$(pwd)
echo $path
mkdir $path
cd $path


for i in $(cat "${pwd}/$1")
do
echo "Grabbing ${i}"
curl -i $i > $i.txt &

if [ $i%4==0 ]
then
    wait
fi
done
