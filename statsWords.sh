#!/bin/bash

#SCRIPT SIN TERMINAR - FALTA SACAR EL PROMEDIO Y VALIUDAR LAS PALABRAS DE MISMA LONGITUD.

#Lectura de texto
read -p "Ingrese un texto: " text

#Creo un archivo
touch texts/script1

echo "" > texts/script1

#Busco espacios y los reemplazo por un salto de línea para separar las palabras

words=(${text// / })

#Creo las variables dode voy a guardar la palabra más larga, la más corta y el promedio.

word1=$(echo "")

longestW=$(echo -n $word1 | wc -c)

shortestW=$(echo -n  $word1 | wc -c)

#Recorro el array y guardo una palabra por línea

#Guardo la cantidad de caracteres que tiene la palabra en la variable wordLength

#Si es la primera interaccion del for guardo el valor de wordLength en la shortestW para comparar la palabra más corta

for i in "${words[@]}"
do
  echo "$i" >> texts/script1
  wordLength=$(echo -n $i | wc -c)
        if [[ $wordLength -gt $longestW ]]
        then
              longestW=$wordLength
              palabralarga=$i
         fi
done

shortestW=$longestW

for i in "${words[@]}"
do
  echo "$i" >> texts/script1
  wordLength=$(echo -n $i | wc -c)
         if [[ $wordLength -le $shortestW ]]
         then
                shortestW=$wordLength
                palabracorta=$i
          fi
done

echo "La palabra mas larga es $palabralarga y tiene $longestW caracteres"
echo "La palabra mas corta es $palabracorta y tiene $shortestW caracteres"



