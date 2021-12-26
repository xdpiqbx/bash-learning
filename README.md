# bash-learning

https://www.youtube.com/watch?v=wcy5spNobL0&list=PLk6X0QSnWKVZ7AJkoEN5JSWphjslKbh9G

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
