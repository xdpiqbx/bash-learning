#!/bin/bash
echo "Phone brand? "
read brand

if [[ $brand == "samsung" ]] || [[ $brand == "nokia" ]] || [[ $brand == "xiaomi" ]] || [[ $brand == "iphone" ]]; then
  case $brand in
    samsung)
      echo "30%";;
    nokia)
      echo "10%";;
    xiaomi)
      echo "50%";;
    *)
      echo "0%"
  esac
else
  echo "$brand - WTF? o_O"
fi
