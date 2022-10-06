#!/bin/bash

# This script prints the n terms from the fibonacci serie. Begining with a0=0 y
# a1=1

a=0
b=1

echo -n "Indice del termino:"
read enesimo

cont=0
if [ $enesimo -ge 0 ]
then
    if [ $enesimo -eq 0 ]
    then
	echo "$a"
    fi
    
    echo -n "$b"

    while [ $cont -le $(($enesimo-2)) ]
    do
	nuevo=$(($a+$b))
        a=$b
	b=$nuevo
        echo -n ", $nuevo"
	cont=$(($cont+1))
    done
fi
echo ""


