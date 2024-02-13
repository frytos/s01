#!/bin/sh

cat /etc/passwd | sed '/\#/d' | sed -n 'n;p' | awk -F: '{print $1}' | rev | sort -r | head -n $FT_LINE2 | tail -n $( expr $FT_LINE2 - $FT_LINE1 + 1 ) | tr '\n' ',' | sed 's&,&, &g' | rev | sed 's/ ,/./' |  rev | tr -d '\n' | tr -d '.'
