#!/bin/bash

MINIPARAMS=10
DEFAULTVAL=40
echo $0

if [ -n "$1" ]
then 
  echo $1
else
  echo "no param1"
fi

arg1=${1:-$DEFAULTVAL}
echo $arg1

if [ -n "${10}" ]
  then echo ${10}
fi

if [ $# -lt $MINIPARAMS ]
then 
  echo "more params please"
fi

args=$#
lastarg=${!args}
echo $lastarg

exit 0
