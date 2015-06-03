#!/bin/bash
clear
printf "%s\n" "$(head -n 1 lottery.csv)"
awk -F "," '{if ($1==201127333) print $2}' lottery.csv
