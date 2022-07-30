#!/bin/bash

regExpScript3="^[A-Z]"

wordVal="^[a-zA-Z]*$"

read -p "Ingrese una palabra: " word

oneWord=$(echo "$word" | wc -w)

[ $oneWord -ne 1 ] && echo "Debe ingresar una palabra" && exit

if [[ $word =~ $wordVal ]]
then 
     if [[ $word =~ $regExpScript3 ]]
     then
	echo "Esta palabra es un Nombre Propio"
     else 
	echo "No es Nombre Propio"
     fi
else
     echo "No es una palabra"
fi




