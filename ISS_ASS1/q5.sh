#!/bin/bash
read -p "Enter string: " str;
echo $str|rev
echo $str|rev|tr "[a-y]z[A-Y]Z" "[b-z]a[B-Z]"
strlen=${#str}
let "revlen = strlen/2"
for((i=(($revlen-1)); i>=0; i--))
do 
    echo -n  ${str:$i:1}
done
echo  ${str:$revlen}


