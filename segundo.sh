#! /bin/bash
echo -n "Escribe un número:  "
read valor
echo $valor
echo -n "Qué operación quieres realizar: [s-sumar/ r-restar/ m-multiplicar / d-dividir ]"
read opcion
b=5
if [[ $opcion == "s" ]]; then
   
   resultado=$(($valor + $b)) 
   echo $resultado
elif [[ $opcion == "r" ]]; then
   if [ "$valor" -lt "$b" ]; then
        resultado=$(($b - $valor))
        echo  "Al ser menor $valor que $b le damos la vuelta y es : $resultado "
    else
        resultado=$(($valor - $b)) 
        echo $resultado
  
    fi
elif [[ $opcion == "m" ]]; then
    resultado=$(($valor * $b)) 
    echo $resultado

elif [[ $opcion == "d" ]]; then
   if [ "$valor" -lt "$b" ]; then
        
        echo  "No se puede dividir "
    else
        resultado=$(($valor / $b)) 
        echo $resultado
  
    fi
else
  echo "Eror en la elección"
    
fi