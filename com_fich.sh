#! /bin/bash
#En esté script vamos a ver si existe o no existe un fichero creado

if [ -f $1 ]; then
  echo "El fichero existe"
else
  echo "El fichero no existe"
fi 