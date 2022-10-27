#!/bin/bash
tipo=$1
cont=1
for var in "$@"
do
    if [ $cont -ge 2 ]
    then
	echo "

public $tipo get${var^}()
{
    return $var;
}

public void set${var^}($tipo $var)
{
    this.$var = $var;
}" >> getters.txt
    fi
    cont=$(($cont+1))
done
