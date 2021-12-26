#!/bin/bash
echo '== for ... in =='

for i in 59 68 98 11; do
  echo $i
done

echo '== for ... in =='

array1=(2 34 45 32)
for i in ${!array1[@]}; do
  echo "${array1[$i]}"
done

echo '== for (()) =='

for((i=0; i<10; ++i)); do
  echo $i
done

echo '== While =='

n=1
while [ $n -lt 4 ]; do
  echo "$n"
  n=$(( $n+1 ))
done