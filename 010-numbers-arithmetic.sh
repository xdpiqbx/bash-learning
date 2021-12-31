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