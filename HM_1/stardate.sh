#!/bin/bash
clear
divider=###########	#Crea una constante que sera el divisor
printf "%s%s%s%s%s\n" "$divider" "$divider" "$divider" "$divider" "#"	#Se imprime el divisor hasta tener la longitud adecuada
figlet StarDate		#Se escribe StarDate 'bonito'
printf "%s%s%s%s%s\n" "$divider" "$divider" "$divider" "$divider" "#"	 #Se imprime el divisor hasta tener la longitud adecuada

figlet $1	#Se imprime el año 'bonito'
printf "%s\n" "$(awk -F "\t" -v a=$(($1)) '{if ($1==a) print $2}' worldhistory.tsv)"	#Se busca la linea que coincida con el año
printf "%s%s%s%s%s\n" "$divider" "$divider" "$divider" "$divider" "#"	 #Se imprime el divisor hasta tener la longitud adecuada
printf "LOOK AT THE FOLLOWING STARS:\n"
printf "RA/°\t\tDEC/°\t\tHIP No.\n"
#A continuación se seleccionan las estrellas con distancia similar al año
printf "%s""$(tail -n +32 hyg.csv|awk -F "," -v a=$(($1)) '{if ($10>((2015-a))&& $10<((2015-a+1))) print $8"\t"$9"\t"$2;}'|head -5)"
printf "\n%s%s%s%s%s\n" "$divider" "$divider" "$divider" "$divider" "#"	 #Se imprime el divisor hasta tener la longitud adecuada
