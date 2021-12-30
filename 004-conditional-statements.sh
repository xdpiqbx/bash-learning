#! /bin/bash
# https://youtu.be/e7BufAVwDiM?t=884
# https://devhints.io/bash#conditionals
: '
[[ -z STRING ]]	Empty string
[[ -n STRING ]]	Not empty string
[[ STRING == STRING ]]	Equal
[[ STRING != STRING ]]	Not Equal
[[ NUM -eq NUM ]]	Equal
[[ NUM -ne NUM ]]	Not equal
[[ NUM -lt NUM ]]	Less than
[[ NUM -le NUM ]]	Less than or equal
[[ NUM -gt NUM ]]	Greater than
[[ NUM -ge NUM ]]	Greater than or equal
[[ STRING =~ STRING ]]	Regexp
(( NUM < NUM ))	Numeric conditions
[[ -o noclobber ]]	If OPTIONNAME is enabled
[[ ! EXPR ]]	Not
[[ X && Y ]]	And
[[ X || Y ]]	Or

File conditions
[[ -e FILE ]]	Exists
[[ -r FILE ]]	Readable
[[ -h FILE ]]	Symlink
[[ -d FILE ]]	Directory
[[ -w FILE ]]	Writable
[[ -s FILE ]]	Size is > 0 bytes
[[ -f FILE ]]	File
[[ -x FILE ]]	Executable
[[ FILE1 -nt FILE2 ]]	1 is more recent than 2
[[ FILE1 -ot FILE2 ]]	2 is more recent than 1
[[ FILE1 -ef FILE2 ]]	Same files
'

# String
string='some str'
if [[ -z $string ]]; then
  echo "String is empty"
elif [[ -n $string ]]; then
  echo "String is not empty"
else
  echo "This never happens"
fi

# Combinations
if [[ X && Y ]]; then
  echo "X && Y"
fi

# Equal
if [[ "$A" == "$B" ]]; then
  echo "Equal"
fi

# Regex
if [[ "A" =~ . ]]; then
  echo "Regex"
fi

####################################

a=1
b=2

if (( $a < $b )); then
   echo "$a is smaller than $b"
fi

if [[ -e "002-file.txt" ]]; then
  echo "file exists"
fi

####################################

age=30

# if [ "$age" -lt 18 ] || [ "$age" -gt 40 ]; then
# if [[ "$age" -lt 18 || "$age" -gt 40 ]]; then
# if (( "$age" < 18 || "$age" > 40 )); then
if (( "$age" < 18 || "$age" > 40 )); then
  echo "Age is correct"
else
  echo "Age is NOT correct"
fi

###########################
# CASE
echo "Phone brand? "
read brand

case $brand in
  samsung)
    echo "30%";;
  nokia)
    echo "10%";;
  xiaomi)
    echo "50%";;
  *)
    echo "Error"
esac