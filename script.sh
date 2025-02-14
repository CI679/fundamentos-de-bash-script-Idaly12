#!/bin/bash 
# Tipos de variables
n1=10
n2=7
echo “El valor de n1 es $n1”
# Estructuras de control condicionales 
# Operadores Condifcionales <(-lt) > (-gt) <= (-le) => (-ge) == (-eq) != (-ne)
if [[ $n1 -gt $n2 ]]; then
    echo "La sentencia es verdadera $n1 $n2"

else
    echo "La sentencia es falsa $n1 $n2"
fi

#Todo programa regresa un valor, si es exitoso es o
ls
res=$?
echo "El resultado de la ejecucion es $res"

if [[ $? -eq 0 ]]; then
#Muestra el ultimo coando ejecutado
    echo "La sentencia se ejecuto correctamente "
else 
    echo "La  sentencia fallo"
fi
#Operadores Manipular archivos
# -e nos indica si un archivo o carpeta existe.
# -d si es una carpeta.
# -r -w -x (Si puede leer, escribir y ejecutar).
# -s Si el archivo esta vacio.

file="./file-demo"

if [[ -s $file ]]; then
    echo "El archivo contiene algo."
else
    echo "El archivo està vacio."
fi
#Operadores Logicos AND (&&) Y OR (||)

if [ -r $file ]  && [ -x $file ]; then
    echo "El archivo se puede leer y ejecutar"
else
    echo "El archivo no se puede leer ni ejecutar"
fi

#Estructura de Control Case

# $ = array donde $# ($1, $2, $3,...$n) -h es una bandera y un hola es parametro
#case <<variable>> in
   # <<caso>> )
      # <<logica>>
   # ;;
#esac

case $1 in
    hola )
      echo "Bienvenido"
    ;;
    adios )
       echo "Adios"
    ;;
    *)
       echo "No entiendo"
    ;;
esac

#EStructuras de control Iterativas
#while
user=""
while [[ $user != "admin" ]]; do
    read -p "¿Cuàl es tu usuario?" user
done

# For each la i depende del rango
for i in {1..5}; do
    echo "El nùmero es $i"
done

#For tradicional
for ((i=0; i<5; i++)); do
    echo "*El nùmero es $i"
done

invitados=( emiliano jorge mau paloma lizeth joel )
for invitado in ${invitados[@]}; do
    echo "Hola $invitado"
done

#Funciones
suma(){
    echo "Hola desde la funciòn suma"
}

resta(){
    echo $(( $1 - $2 ))
}
suma
total=$(resta 9 4)
echo "El total es $total" 
