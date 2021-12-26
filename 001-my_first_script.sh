#!/bin/bash
echo 'Another one Hello World, facepalm'

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