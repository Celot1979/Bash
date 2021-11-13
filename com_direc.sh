#! /bin/bash
#En esté script vamos a ver si existe o no existe un fichero creado

if [ ! -d $1 ]; then
    echo "Error: el directorio no existe"
    exit 1
fi

total=0
for f in `ls $1`; do
    name="$1/$f"
    if [ -f $name ]; then
        bytes=`ls -l $name | cut -d " " -f 5`
        echo "Fichero $name ocupa $bytes" | tr -s /
        (( total = $total + $bytes ))
    fi
done

echo -e "\nTotal: $total"
