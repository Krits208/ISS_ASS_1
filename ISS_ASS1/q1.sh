#!/bin/bash
file= $1
sed -E '/^$d' < $file > output.txt
$ awk '!a[$0]++' <output.txt>$file
