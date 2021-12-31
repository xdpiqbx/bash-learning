# https://youtu.be/e7BufAVwDiM?t=3754

###### main.sh
NAME="Name from main.sh -> John"
export NAME
./008-test.sh

###### 008-test.sh
echo "Message from 008-test.sh. $NAME"

# -> ./main.sh
# Message from 008-test.sh. Name from main.sh -> John