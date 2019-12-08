#!/bin/bash
if [ $# -ne 1 ] ; then
	echo "Script takes 1 arguments, the 3 letter abbrebiation for the month" 
	exit 1 
fi
grep aapl [0-3][0-9]_$1_1[4-5] | colrm 1 23 | colrm 10

