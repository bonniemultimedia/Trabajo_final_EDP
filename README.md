# Trabajo Final
Alumna: María Florencia Gómez
Materia: Entorno de Programación
Carrera: TUIA

# Menú
Menú de mini aplicaciones (scripts de bash ) para análisis de texto
## Script 1 - statsWords
Indicador estadístico de longitud de palabras (la más corta, la más larga y el
promedio de longitud).
## Script 2 - statsUsageWords
Indicador estadístico de uso de palabras, deben ser de al menos 4(cuatro)
letras. (mostrar un Top Ten de estas palabras ordenadas desde la que tiene
más apariciones a la que tiene menos). 
## Script 3 - findNames
Identificación de nombres propios (se identifican sólo si están en este formato Nnnnnnnnn, aunque la palabra no sea un nombre propio realmente
## Script 4 -  statsSentences
Indicador estadístico de longitud de oraciones (la más corta, la más larga y el
promedio de longitud).
## Script 5 - blankLinesCounter.
Contador de líneas en blanco. 
# Docker File
# Ejecución de la Aplicación
**Instalar Docker en tu SO**
https://docs.docker.com/engine/install/ubuntu/

**Clonar el respositorio**
`git clone https://github.com/bonniemultimedia/Trabajo_final_EDP.git`

**Ir a la carpeta Generada y Crear la imagen**
`sudo docker build –tag edp_tf .`

**Ejecutar el contendor con la imagen creada.**
`sudo docker run -it –rm edp_tf`

