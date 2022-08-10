#!/bin/bash

#Lectura de texto ingresado por teclado
read -p "Ingrese un texto: " text

#Creo un archivo
touch texts/script2

#Busco espacios y los reemplazo por un salto de línea para separar las palabras

words=(${text// / })

#variables

let four=4

for i in "${words[@]}"
do 	
  wordLength=$(echo -n $i | wc -c)
        if [[ $wordLength -gt $four ]]
        then
              echo "$i" >> texts/script2
         fi
done

#Muestro el archivo generado con los siguientes filtros: UNIQ -c cuenta las veces que aparecen repetidas las palabras. SORT -n acomoda de forma descendiente los indíces (en este caso serían la cantidad de veces que se repiten). Agregrando -r al comndo SORT invierto la lista. HEAD muestra por defecto las 10 primeras lineas.

cat texts/script2 | uniq -c | sort -n -r | head


rm texts/script2




