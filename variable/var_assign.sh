#!/bin/bash

let a=18+4
echo $a

for a in 7 8 9 11
do 
  echo -n "$a "
done

echo -n "Enter value of a: "
read a
echo $a

a=`echo hello!`
echo $a

a=`ls -l`
echo $a
echo "$a"

R=$(cat /dev/null)
version=`uname -a`
arch=$(uname -m)
echo $R
echo $version
echo $arch

exit 0
