#!/bin/bash

a=2334
let a+=1   # Same effect as below
let "a+=1"
echo $a

b=${a/23/BB} # Substitue "BB" for 23
echo $b

let b+=1
echo $b # String is 0

a=36453636636
b=${a/36/00}
echo $b

exit 0
