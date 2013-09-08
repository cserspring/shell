#!/bin/bash

SUCCESS=0
E_NOARGS=65

if [ -z "$1" ]
then 
  echo "Usage: `basename $0` rpm-file"
  exit $E_NOARGS
fi

{
  echo
  echo "Archive Description:"
  rpm -qpi $1 # Query description
  echo
  echo "Archive Listing:"
  rpm -qpl $1 # Query listing
  echo 
  rmp -i --test $1 # Query whether rpm file can be installed
  if [ "$?" -eq $SUCCESS]
  then 
    echo "$1 can be installed"
  else
    echo "$1 cannot be installed"
  fi
  echo # End code block
} > "$1.test"

echo "Results of rmp test in file $1.test"

exit 0
