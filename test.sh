#!/bin/bash

LOG_DIR=/var/log
ROOT_ID=0
E_XCD=86
E_NOTROOT=87


echo "The # here does not begin a comment."
echo 'The # here does not begin a comment.'
echo The \# here does not begin a comment.
echo The # here begins a comment.

echo ${PATH#*:}       # Parameter substitution, not a comment.
echo $(( 2#101011 ))  # Base conversion, not a comment.

variable="initial_value"
echo "new_value" | read variable
echo "variable = $variable"     # variable = initial_value

veg1=carrots
veg2=tomatoes

if [[ "$veg1" < "$veg2" ]]
then
  echo "Although $veg1 precede $veg2 in the dictionary,"
  echo -n "this does not necessarily imply anything "
  echo "about my culinary preferences."
else
  echo "What kind of dictionary are you using, anyhow?"
fi

for file in /{,usr/}bin/*calc
#             ^    Find all executable files ending in "calc"
#+                 in /bin and /usr/bin directories.
do
        if [ -x "$file" ]
        then
          echo $file
        fi
done


: ${username=`whoami`}
: > tmpfile #truncate a file to zero length. If not exist, create it.


echo \"{These,words,are,quoted}\"   # " prefix and suffix
# "These" "words" "are" "quoted"
echo {file1,file2}\ :{\ A," B",' C'} #No spaces allowed within the braces unless the spaces are quoted or escaped.

if [ "$UID" -ne "$ROOT_ID" ]
then
  echo "Must be root to run this script"
  exit $E_NOTROOT # Following lines will not be executed
fi

if [ -n "$1" ] # non-empty
then 
  lines=$1
else
  lines=$LINES
fi

echo $lines

cd $LOG_DIR || {
  echo "Cannot change to necessary directory" 
  exit $E_XCD
}

exit 0
