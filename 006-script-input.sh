#! /bin/bash
# chmod +x ./006
# command line params
echo $0 $1 $2 $3

echo "-========-"

args=("$@")
# echo ${args[0]} ${args[1]} ${args[2]}
echo $@
echo $# # arr length

echo "-========-"

# Next script will read file line by line
while read line; do
  echo $line
done < ${1:-/dev/stdin}

# ./006-script-input.sh ./index.sh
