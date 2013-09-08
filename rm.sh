#!/bin/rm
# Self-deleting script

# Nothing much seems to happen when you run this.. except that the file 
# disappears

WHATEVER=85

echo "This line will never print (betcha!)."

exit $WHATEVER # Try an echo $? after script termination. You will get a 0.
