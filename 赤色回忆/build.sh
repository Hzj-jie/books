#!/bin/bash

chmod 777 赤色回忆.txt
rm 赤色回忆.txt
for i in $(ls -1 *.txt); do
    echo >> 赤色回忆.partial
    echo $i >> 赤色回忆.partial
    cat $i >> 赤色回忆.partial
done

mv 赤色回忆.partial 赤色回忆.txt
chmod 444 赤色回忆.txt

tr -d "\r\n" < 赤色回忆.txt  | sed 's/\s//g' | wc -m
