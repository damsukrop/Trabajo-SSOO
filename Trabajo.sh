#!/bin/bash

#Programa que crea un directorio basandose en el anyo que estas cursando en donde luego creara directorios para cada asignatura. 
echo "Introduce el anyo que estas cursando" 
read anyo 
mkdir $anyo
echo "Se ha creado la carpeta $anyo" 
cd $anyo

echo "Introduce el numero de asignaturas que vas a cursar" 
read numero

if [ "$numero" -eq 0 ]; then 
echo "No se ha creado ningun fichero ya que no estas cursando ninguna asignatura" 
else 
inicio=1 
lista=() 
for ((i=$inicio; i<=$numero; i++)); do 
echo "Introduce la asignatura $i:" 
read -r element lista+=("$element") 
done 
fi

for elemento in ${lista[@]}; do 
touch $elemento 
echo "Se ha creado dentro de la carpeta $anyo el fichero $elemento" 
done
