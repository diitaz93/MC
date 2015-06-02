#!/bin/bash
clear
divider=============
figlet arXiv
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="
printf "%s\n" "Searching the arXiv for the new stuff"
printf "%s\n" "http://arxiv.org/list/q-bio/new"
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="
printf "keyword: $1\n"
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="

curl -s http://arxiv.org/list/q-bio/new > temp.txt
grep Title: temp.txt | grep -i $1 > titulos.txt
printf "Articles found: %s\n" "$(wc -l titulos.txt | sed 's/titulos.txt//g')"
sed 's/<span class="descriptor">Title:<\/span>/-/g' titulos.txt
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="






