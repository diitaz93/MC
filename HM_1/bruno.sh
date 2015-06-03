#!/bin/bash
clear
printf "La cantidad de planetas incluidos en el catalogo es %s\n" "$(tail -n +2 kepler.csv | wc -l)"

printf "El planeta con menor periodo orbital es %s\n" "$( tail -n +2 kepler.csv | awk -F "," '{print $6","$1}'|sort | head -n 1| awk -F "," '{print $2}')"



