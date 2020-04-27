#!/bin/bash
echo "Enter a path to check non empty files"
read path 
cd $path
for i in *
do [ $(du -sh $i | awk '{print $1}') ]
echo $i
done

