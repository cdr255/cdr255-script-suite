#!/bin/bash
#
#
# cdr.create-project.sh - makes a directory
# which follows the CDR project filestructure.
# Part of the cdr255 script-suite.
#
# Usage: cdr.create-project.sh <name of project>
# 
# Maintained by: Christopher Rodriguez (04/14/12)
#
# Created by: Christopher Rodriguez (04/14/12)
# 
# Free Software Notification: This script is
# Free Software: Permission is granted to distribute,
# modify, and otherwise molest this script in any way
# the user would like. Do so at Your own risk.

projectname="$1"

mkdir -pv "$projectname"

cd "$projectname"

mkdir -pv src pro imgs snds src/latex src/code pro/docs

echo "Current Directory is: $PWD"

touch "README"

touch "roadmap.org"

cp -v ~/bins/cdr255skel/.gitignore .

git init

git add *

git commit -m 'Auto-generated inital commit from cdr255 project creation script.' 

read -p "Press Return to Begin Working..."

emacs -nw README;

rm -rfv *~ 

git add *

git commit
