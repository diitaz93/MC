#!/bin/bash
clear
# Lo siguiente cuenta todo menos el encabezado
printf "La cantidad de planetas incluidos en el catalogo es %s\n" "$(tail -n +2 kepler.csv | wc -l)"
# Compara la columna dos con 0.01 y muestra los que tienen un valor menor a ese
printf "La cantidad de planetas con una masa menor a un centésima de la masa de Júpiter es %s\n" "$(awk -F "," '{if ($2<=0.01 && $2!=null) print $1,$2;}' kepler.csv | wc -l)"

printf "Los planetas son los siguientes:\n"	#De esos planetas muestra solo el nombre (Columna 1)
awk -F "," '{if ($2<=0.01 && $2!=null) print $1","$2;}' kepler.csv | awk -F"," '{print $1}'
printf "\n"
# Se selecciona el archivo sin el encabezado y se organiza la columna 6 en orden numérico. Después se selecciona el primero en la lista (El más pequeño)
printf "El planeta con menor periodo orbital es %s\n" "$( tail -n +2 kepler.csv | awk -F "," '{print $6","$1}'|sort | head -n 1| awk -F "," '{print $2}')"



