#! /bin/bash
#En esté script vamos a ver si existe o no existe un fichero creado

if [ ! -d $1 ]; then
  echo "Error: El directorio que estás intentando calcular no existe........."
  fi 

  name=`ls -l`
  echo $name