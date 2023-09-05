#!/bin/bash

rm 赤色回忆.txt
for i in $(ls -1 *.txt); do
    cat $i >> 赤色回忆.partial
done

mv 赤色回忆.partial 赤色回忆.txt
