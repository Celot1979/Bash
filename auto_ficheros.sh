#! /bin/bash
# Vamos a crear un script que automatice la creación de ficheros 
# Tendrá un nombre de fichero
# Un tipo de extensión
# Un número que indicará el lugar que determine
#Un dirección para guardar el gurpo de nuevos ficheros.

#  Vamos a crear una función para no repetir código en los errores
# Sintasis:
error(){
    echo $1
    exit 1
}
#1º Examinamos que el número de parámetros sean los correctos
if [ $# -ne 4 ]; then
   error "Uso correcto: script nombre extension nºarchivo ruta para guardar los archivos"
  
fi
#Siguiente  error que deberíamos testear es si existe la ruta

if [ ! -d $4 ]; then
   error  "Error el directorio no existe"
   
fi

#Debemos testear si el número que nos pasan por parámetro es mayor o igual a 1. 
#De lo contrario deberemos capturar el error.
if [ $3 -lt 1 ]; then
    error  "Número debe de ser mayor que 0"
   
fi

#Codigo del Script - post captura de posibles errores -

# El 1º acto es recorrer el número que nos indica el usuario del número del fichero. Para eso realizaremos un for
for (( i = 1; i <= $3; i++)); do
   name ="$4/$1$i.$2"
   if [ $i -lt 10 ]; then
    name ="$4/$10$i.$2"
    fi
    echo $name
      
done