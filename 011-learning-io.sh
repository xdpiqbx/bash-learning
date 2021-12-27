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