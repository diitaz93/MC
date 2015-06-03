#!/bin/bash
clear
divider=============	#Crea una constante de divisorque se va a imprimir constantemente
figlet arXiv		#Muestra el texto 'bonito'
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="	#Imprime el divisor de la longitud deseada
printf "%s\n" "Searching the arXiv for the new stuff"
printf "%s\n" "http://arxiv.org/list/q-bio/new"
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="	#Imprime el divisor de la longitud deseada
printf "keyword: $1\n"						#Imprime el valor que entra por parametro
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="	#Imprime el divisor de la longitud deseada

curl -s http://arxiv.org/list/q-bio/new > temp.txt		#Importa el codigo fuente de la pg web
grep Title: temp.txt | grep -i $1 > titulos.txt			#Redirige los titulos de los articulos que tienen la palabra clave
printf "Articles found: %s\n" "$(wc -l titulos.txt | sed 's/titulos.txt//g')"	#Imprime el numero de articulos
sed 's/<span class="descriptor">Title:<\/span>/-/g' titulos.txt	#Quita el texto que estorba
printf "%s%s%s%s\n" "$divider" "$divider" "$divider" "="	#Imprime el divisor de la longitud deseada






