#! /bin/bash
echo -n "Quieres mandar un mensaje: [S / N] "
read resultado
if [[ $resultado == "s" ]]; then
   echo "Escribiendo mensaje ......."
elif [[ $resultado == "n" ]]; then
   echo "Esperando respuesta "
fi
#Prueba