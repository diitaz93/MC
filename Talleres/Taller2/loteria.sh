#!/bin/bash
clear
rm lottery.csv
wget -q https://raw.githubusercontent.com/ComputoCienciasUniandes/MetodosComputacionalesLaboratorio/master/2015-V/actividades/lottery/lottery.csv
printf "%s\n" "$(head -n 1 lottery.csv)"
awk -F "," '{if ($1==201127333) print $2}' lottery.csv
