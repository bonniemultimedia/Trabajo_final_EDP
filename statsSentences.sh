#!/bin/bash

read -p "Ingrese un texto " text #Leo el texto que ingresa por teclado

#Creo un archivo texts/script4
touch texts/script4

sentences=$(echo $text | sed "s/\.\s/\n/g") #Reemplazo los puntos seguido de espacio, por un salto de línea para dividir las oraciones.

#Recorro el array que contiene las lineas y las imprimo en el archivo
for i in "${sentences[@]}"
do
    echo "$i" >> texts/script4
done

#Recorrer el archivo por línea hasta el final
while read -r line;
do
    if [[ "${#line}" -gt "${#longestS}" ]]
    then
      longestS=$line
      longCont=$(echo -n $line | wc -c)
    fi

done < texts/script4

shortestS=$longestS

while read -r line;
do
    if [[ ${#line} != 0 ]] && [[ "${#line}" -le "${#shortestS}" ]]
    then
      shortestS=$line
      shortCont=$(echo -n $line | wc -c)
    fi

done < texts/script4

suma=$(expr $shortCont + $longCont)
prom=$(echo $suma / 2 | bc -l)

echo "LA ORACIÓN MAS LARGA ES: $longestS Y TIENE $longCont CARACTERES"
echo "LA ORACION MAS CORTA ES: $shortestS Y TIENE $shortCont CARACTERES"
echo "EL PROMEDIO ES $prom"

rm texts/script4
