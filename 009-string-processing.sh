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