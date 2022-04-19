#!/bin/bash
file=$1;
FileSize=$(wc -c < $file);
echo "$FileSize";
numlines=$(wc -l<$file);
echo "$numlines";
NumWords=$(wc -w<$file);
echo "$NumWords";
c=0;
while read line;
do
read -a num <<< $line;
let "c = c+1";
echo "Line $count: ${#num[*]}";
done < $file
awk '{for(i=1;i<=NF;i++)print $i}' quotes.txt|sort|uniq -c| awk '{print $2 "  " $1}'
