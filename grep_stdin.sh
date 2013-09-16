#!/bin/bash
path=$(printenv PATH)
echo $path

LINE=abc-gd-dd

IFS="-" read -ra arr <<< "$LINE"
echo ${arr[1]}

abc=abc
echo -en "$abc\t"
echo -n bdc
echo
grep -E '.*pattern3.*' -
