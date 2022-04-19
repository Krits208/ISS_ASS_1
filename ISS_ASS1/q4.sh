declare -a arr
   read str
   newstr=$(echo $str | tr "," " ")
   arr=($(echo $newstr))
   for ((i=0 ; i<${#arr[@]} ; i++))
   do
           for ((j=0 ; j<${#arr[@]}-1 ; j++))
          do
                   if [[ ${arr[$j]} -gt ${arr[$j+1]} ]]
                  then
                          temp=${arr[$j+1]}
                          let arr[$j+1]=${arr[$j]}
                          let arr[$j]=$temp
                  fi
          done
  done
  echo ${arr[@]}
