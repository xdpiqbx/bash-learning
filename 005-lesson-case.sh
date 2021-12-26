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