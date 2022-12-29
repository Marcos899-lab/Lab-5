#!/bin/bash

files="$@"

for i in "$@" ; do
	split $i -n 20 $1frag_
	count=0
	for element in $1frag_* ; do
		if [ $count -eq 0 ] ; then
			cat < $element > $i
			rm $element
			count=$(($count+1))
		else
			rm $element
		fi
	done
done
