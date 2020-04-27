#!/bin/bash
echo "Enter path to list non empty files and directories"
read path
cd $path
echo "List of non empty files"
for i in $(ls -F | grep -v /)
do [ $(du -sk $i | awk '{print $1}') -gt 4 ] && echo $i
done
echo "List of non empty directories"
for j in $(ls | grep ^d) 
do [ $(du -sk $j | awk '{print $1}') -gt 4 ] && echo $j
done

