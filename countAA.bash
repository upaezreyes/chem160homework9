#!/bin/bash
if [ $# -ne 2 ]; then
	echo "This script requires an Amino Acid and a protein file"
	exit 1
fi
if [ ! -f $2 ] ; then 
	echo "Cannot find protein file"
	exit 1 
fi

echo -n "The number of $1 Amino Acid in $2 is:"
grep $1 $2 | grep CA | wc |  colrm 10 
