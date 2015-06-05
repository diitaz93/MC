#!/bin/bash
cd /home/juan/Documents/C/c-examples/src
rm c31_goto.c
rm c83_terminal_io.c
rm cA5_thread_join.c
rm *.out

i=0
for file in $(ls *.c)
do
  gcc -o $file.out $file
  i=$(($i+1))
 if [ $i -eq 30 ]
    then
	break
  fi
done
