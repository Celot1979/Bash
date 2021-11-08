#! /bin/bash
#En esté script vamos a ver si existe o no existe un fichero creado

if [ -d $1 ]; then
  echo "El Directorio existe"
else
  echo "El Directorio no existe"
fi 