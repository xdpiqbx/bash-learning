# [Bash Scripting Full Course 3 Hours](https://www.youtube.com/watch?v=e7BufAVwDiM)

```code
1-Hello Bash Scripting
2-Redirect to file
3-Comments
4-Conditional Statements
5-Loops
6-Script input
7-Script output
8-how to send output from one script to another script
9-String Processing
10-Numbers and Arithmetic
11-Declare Command
12-Arrays
13-Functions
14-Files and Directories
15-Send Email Via Script
16-Curl in Scripts
17-Professional Menus
18-Wait for filesystem events with inotify
19-Introduction to grep
20-Introduction to awk
21-Introduction to sed
22-Debugging bash scripts
```

---

## 1-Hello Bash Scripting

`001-helloScript.sh`

```bash
touch 001-helloScript.sh
chmod +x 001-helloScript.sh # it makes file executable
```

```bash
#! /bin/bash
echo 'Another one Hello World, linuxhint'
```

---

## 2-Redirect to file

```sh
#! /bin/bash
echo '> - will create file and write this string' > 002-file.txt
echo '>> - will append to file' >> 002-file.txt
echo 'this str will rewrite all file' > 002-file.txt

# here you will write something else to file from term then press ctrl+d
cat >> 002-file.txt
```

---

## 3-Comments and heredoc

```sh
#! /bin/bash
echo 'start'

# one line comments

: '
multi line
comment
comment
comment
'

cat << heredoc
doc line 1
doc line 1
doc line 1
doc line 1
heredoc

echo 'end'
```

---

## 4-Conditional Statements

```bash
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
```

---

## 5-Loops

```bash
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
```

---

## 6-Script input

```bash
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

```

## 7-Script output

```bash
# file 1 for output
# file 2 for output errors
ls -al 1>007-file-1-ok.txt 2>007-file-2-error.txt

# all error you will see in terminal
ls -al > 007-file-1-ok.txt

# all output and errors to one file
ls -al > 007-file.txt 2>&1
```

---

## 8-how to send output from one script to another script

```bash
# https://youtu.be/e7BufAVwDiM?t=3754

###### main.sh
NAME="Name from main.sh -> John"
export NAME
./008-test.sh

###### 008-test.sh
echo "Message from 008-test.sh. $NAME"

# -> ./main.sh
# Message from 008-test.sh. Name from main.sh -> John
```

---

## 9-String Processing

```bash
### matching by content
echo "Enter 1st string"
read st1

echo "Enter 2nd string"
read st2

if [ $st1 == $st2 ]; then
  echo "is Match"
else
  echo "is NOT match"
fi

### matching by length
echo "Enter 1st string"
read st1

echo "Enter 2nd string"
read st2

if [ $st1 \< $st2 ]; then
  echo "$st1 is smaller then $st2"
elif [ $st1 \> $st2 ]
  echo "$st2 is smaller then $st1"
else
  echo "strings are eqal length"
fi

### concatenation
echo "Enter 1st string"
read st1

echo "Enter 2nd string"
read st2

concatenated=$st1$st2

echo $concatenated

# UPPER lower case
echo 'UPPER lower case'
echo ${st1^} # first letter to upper ignore other
echo ${st2^^} # all letters to upper case
```

---

## 10-Numbers and Arithmetic

```bash
echo 31+21 # print -> 31+21
echo $((31 + 21)) # print 52

n1=31
n2=21

echo $(($n1 + $n2))
echo $(($n1 - $n2))
echo $(($n1 * $n2))
echo $(($n1 / $n2))
echo $(($n1 % $n2))

echo $(expr $n1 + $n2)
echo $(expr $n1 - $n2)
echo $(expr $n1 \* $n2)
echo $(expr $n1 / $n2)
echo $(expr $n1 % $n2)

## HEX convert

echo "Enter HEX"
read hex

echo -n "Dec val of $hex is : "

echo "obase=10; ibase=16; $hex" | bc
```

---

## 11-Declare Command

```bash

```

---

[contine](https://youtu.be/e7BufAVwDiM?t=4999)

---

## Hello World

```bash
#!/bin/bash
echo 'Another one Hello World, facepalm'
```

```code
sudo chmod +x ~/Dev/bash-learning/001-my_first_script.sh
max@dpiqb:~/Dev/bash-learning$ ~/Dev/bash-learning/001-my_first_script.sh
```

## Variables

```bash
#!/bin/bash

name="Artem"
x=2
y=3

echo "Hello $name"

new=$(($x+$y))

echo $new

echo "==========================="

echo $BASH
echo $BASH_VERSION
echo $HOME
echo $HOSTNAME
echo $RANDOM
echo $OSTYPE
echo $PWD
echo $PS1
echo $PS2
echo $UID
echo $USER

echo "$USER@$HOSTNAME:$PWD"
```

## Params

```bash
#!/bin/bash
echo -n "Your name? "
read name
echo "Hello $name"
```

```bash
#!/bin/bash
# Params
# $1 $2 ..... $9 $[10] $[11] ... $[25]
echo "$(($1 $2 $3))"
```

```bash
#!/bin/bash
echo "Hello $1"
```

## if .... else

```bash
#!/bin/bash

echo "Age? "
read age

# -lt - < less then
# -gt - > grate then
# -le - <= less then equal
# -ge - >= grate then equal
# -eq - == equal

if [[ $age -ge 0 ]] && [[ $age -lt 12 ]]; then
    echo "To small"
  elif [[ $age -ge 12 ]] && [[ $age -lt 18 ]]; then
    echo "Teenager"
  elif [[ $age -ge 18 ]] && [[ $age -lt 60 ]]; then
    echo "Adult"
  else
    echo "To old"
fi
```

## case

```bash
#!/bin/bash
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
```

## array

```bash
Array1=(2 34 45 32)
Array2=(34 5 five)

# Array output
echo ${Array1[@]}
echo ${Array2[@]}

# Array all INDEXES output
echo ${!Array1[@]}
echo ${!Array2[@]}

# Array length
echo ${#Array1[@]}
echo ${#Array2[@]}

# Array element length
echo ${#Array1[1]}
echo ${#Array2[2]}

echo "============="
Array1[0]=299
Array2[1]=nine

echo ${Array1[@]}
echo ${Array2[@]}

echo "for i in Array1; do ..."
for i in ${!Array1[@]}; do
  echo "${Array1[$i]}"
done
```

## Loops

```bash
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
```

## Functions

```bash
#!/bin/bash
list_files(){
  echo "Files ..."
  cd ~/Dev/bash-learning
  ls;
}

list_files
```

## Recursive

```bash
example(){
  echo "2 + 2 = ?"
  read answer
  if [[ $answer == 4 ]]; then
    echo "Ok!"
  else
    echo "Error"
    echo
    example
  fi
}
example
```

## input/output redirection

```bash
#!/bin/bash
# > - перенаправление вывода перезапишет файл
# < - перенаправление ввода
# >> - перенаправление вывода, добавляет в конец файла
# do something > /path/to/file

echo "Output to file" > ./logfile

while read text; do
  echo $text
done < ./logfile

array=()
i=0
while read text; do
  array[$i]=$text
  i=$(($i+1))
done < ./logfile

echo "====> for in"

for i in ${!array[@]}; do
  echo "${array[$i]}"
done

echo "====> cat"
# cat - используется для объединения нескольких выводов
cat < ./logfile

# вывод подключенных дисков
ls /dev | grep sd[a-z][1-9]
```
