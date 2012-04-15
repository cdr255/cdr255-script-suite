#/bin/bash
#
# cdr.latex-init.sh - Initialize a LaTeX project in the current directory.
#
# Usage: cdr.latex-init.sh
#
# Maintained By: Christopher Rodriguez
#
# Created By: Christopher Rodriguez
#
# Free Software Notification: This script is
# Free Software: Permission is granted to distribute,
# modify, and otherwise molest this script in any way
# the user would like. Do so at Your own risk.

cp -v ~/bins/cdr255skel/latex/* .
git add *
git commit -m "Auto-Generated Commit from cdr.latex-init.sh script. Initialized LaTeX Project."
emacs -nw main.tex
