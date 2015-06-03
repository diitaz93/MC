#!/bin/bash
clear
sed 's/\.//g' pgn.dat | sed -E 's/,([0-9])/\.\1/g' |sed -E 's/ ([0-9])/\t\1/g' | sed -E 's/ \(/\t\(/g'|sed -E 's/\)//g' | sed -E 's/\(/-/g'> pgn.tsv
printf "El sector con el menor cambio porcentual fue %s\n" "$(sort -n --field-separator=$'\t' --key=4 pgn.tsv | head -n 1|awk -F "\t" '{print $1}')"

