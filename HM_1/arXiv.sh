#!/bin/bash
divider=============
figlet arXiv
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="
printf "%s\n" "Searching the arXiv for the new stuff"
printf "%s\n" "http://arxiv.org/list/q-bio/new"
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="
curl http://arxiv.org/list/q-bio/new>temp.sh
grep Neurons temp.sh>num.sh
#cat num.sh
#printf "\n\n"
grep Title: temp.sh>titulos.sh
#cat titulos.sh
#printf "\n\n"






