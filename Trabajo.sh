#!/bin/bash

#Programa que crea un directorio basandose en el anyo que estas cursando en donde luego creara directorios para cada asignatura. 
echo "Introduce el anyo que estas cursando" 
read anyo 
mkdir $anyo
echo "Se ha creado el directorio $anyo" 
cd $anyo

echo "Introduce el numero de asignaturas que vas a cursar" 
read numero

if [ "$numero" -eq 0 ]; then 
echo "No se ha creado ningun directorio ya que no estas cursando ninguna asignatura" 
else 
inicio=1 
lista=() 
for ((i=$inicio; i<=$numero; i++)); do 
echo "Introduce la asignatura $i:" 
read -r element lista+=("$element") 
done 
fi

for elemento in ${lista[@]}; do 
mkdir $elemento 
echo "Se ha creado dentro de $anyo el directorio para la asignatura $elemento" 
done
