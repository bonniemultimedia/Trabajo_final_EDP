#!/bin/bash

regExpScript3="^[A-Z]"

wordVal="[0-9]"

read -p "Ingrese una palabra: " word

if [[ $word =~ $regExpScript3 ]]
then
	echo "Esta palabra es un Nombre Propio"
else 
	echo "No es Nombre Propio"
fi




