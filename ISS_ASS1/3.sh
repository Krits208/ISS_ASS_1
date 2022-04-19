awk '{for(i=1;i<=NF;i++)print $i}' quotes.txt|sort|uniq -c| awk '{print $2 "  " $1}'
