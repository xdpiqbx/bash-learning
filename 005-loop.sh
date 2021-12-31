#! /bin/bash


# WHILE loop will run until condition false
number=1
while [ $number -le 10 ]; do
  echo $number
  number=$(( $number+1 ))
done


# UNTIL loop will run until condition false
number=1
until [ $number -ge 10 ]; do 
  echo $number
  number=$(( $number+1 ))
done

# FOR loop
for i in 1 2 3 4 5; do 
  echo $i
done

for i in {0..20}; do 
  echo $i
done

for i in {0..20..2}; do 
  echo $i
done

for (( i = 0; i < 5; i++ )); do 
  echo $i
done

# Do not forgot about `beak` and `continue` stmnts