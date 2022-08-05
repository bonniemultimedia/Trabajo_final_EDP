#!/bin/bash

#Lectura de texto ingresado por teclado
read -p "Ingrese un texto: " text

#Creo un archivo
touch texts/script1

#Busco espacios y los reemplazo por un salto de línea para separar las palabras

words=(${text// / })

#Creo las variables donde voy a guardar la palabra más larga, la más corta y el promedio. Las inicializo en 0.

word1=$(echo "")

longestW=$(echo -n $word1 | wc -c)

shortestW=$(echo -n  $word1 | wc -c)

#Recorro el array e imprimo una palabra por línea

#Guardo la cantidad de caracteres que tiene cada palabra en la variable wordLength

#En cada interacción comparo si la palabra ingresada tiene mayor cantidad de caracteres que los que almacena la variable longestW y guardo el valor en la misma variable. 

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

#Para calcular la palabra más corta, creo una variable que contiene el valor de la palabra con mayor cantidad de caracteres.

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

suma=$(expr $shortestW + $longestW)
prom=$(echo $suma / 2 | bc -l)

echo "La palabra mas larga es $palabralarga y tiene $longestW caracteres"
echo "La palabra mas corta es $palabracorta y tiene $shortestW caracteres"
echo "El promedio es: $prom"

rm texts/script1

