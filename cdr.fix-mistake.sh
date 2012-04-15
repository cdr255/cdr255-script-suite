#!/bin/bash
#
#
# cdr.fix-mistake.sh - A wrapper for sed, to prevent 
# and fix mistakes with filenames.
#
# Usage: cdr.fix-mistake.sh <OLD-EXPRESSION> <NEW-EXPRESSION>
#
# Maintained by: Christopher Rodriguez(04/14/12)
#
# Created by: Christopher Rodriguez(04/14/12)
# 
# Free Software Notification: This script is
# Free Software: Permission is granted to distribute,
# modify, and otherwise molest this script in any way
# the user would like. Do so at Your own risk. 

for i in *
do
	dest=`echo "$i" | sed -e s/"$1"/"$2"/g`;
	mv -v "$i" "$dest"
	echo "Please Be More Careful!"
done


