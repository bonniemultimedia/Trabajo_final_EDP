#!/bin/bash

read -p "Ingrese un texto " text #Leo el texto que ingresa por teclado

#Creo un archivo texts/script4
touch texts/script5

sentences=$(echo $text | sed "s/\.\s/\n/g") #Reemplazo los puntos seguido de espacio, por un salto de línea para dividir las oraciones.

#Recorro el array que contiene las lineas y las imprimo en el archivo
for i in "${sentences[@]}"
do
    echo "$i" >> texts/script5
done

cont=0

#Recorrer el archivo por línea hasta el final
while read -r line;
do
    if [[ "${#line}" == 0 ]]
    then
	    cont=$(($cont + 1 ))
    fi

done < texts/script5

echo "El número de líneas en blanco es: $cont"

rm texts/script5
