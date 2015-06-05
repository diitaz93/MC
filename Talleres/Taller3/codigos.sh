#!/bin/bash
cd /home/juan/Documents/C/c-examples/src
rm codigo.md
for file in $(ls *.c)
do
echo "#Nombre del Archivo: $file" >> codigo.md
echo "\`\`\`" >> codigo.md
cat $file >> codigo.md
echo "\`\`\`" >> codigo.md
done

