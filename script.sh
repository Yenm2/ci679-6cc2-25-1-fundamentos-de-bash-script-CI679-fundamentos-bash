#!/bin/bash

#tipos de variables:-> Numero, Bool o un

n1=10
n2+7
echo "el valor de n1 es $n1"

#Estructuras de control condicionales
#operadores condicioales <(-lt)  >(-gt) <=(-le) =>(-ge)
#==(-eq) !=(-ne)

if [[ $n1 -gt $n2 ]]; then
	echo "la sentencia es verdadera $n1 $n2" 
else
	echo "La sentencia es falsa $n1 $n2"
fi


#todo programa regresa un valor, si es exitoso es 0
ls
res=$?
echo "El resultado de la ejecucion es  $res"
ls
if [[ $? -eq 0 ]] ; then
	echo "La sentencia se ejecuto correctamente"
else
	echo "La sentencia fallo"
fi

#Operadores para amnipulr archivos
#-e nos indica si un archivo o carpeta existe
#-d nos indica si es una carpeta 
#-r -w -x (Sipuede leer,escribir o ejecutar)
#-s si el archivo esta vacio

file= "./filedemo"
if [ -s $file ]; then
	echo "El archivo contiene algo"
else
	echo "El archivo esta vacio"
fi 

#operadores logicos AND(&&) OR(||)
if [ -r file ] && [ -x $file ]; then
	echo "el archivo se puede leer y ejecutar"
else
	echo "el archivo no se puede leer ni ejecutar"
fi

#estructura de control case

#$=array donde $# ($1,$2,,$3. . . $n) -h hola

case $1 in
	hola )
		echo "Bienvenido"
	;;
	adios)
		echo"Adios"
	;;
	*)
		echo"No entiendo"
esac

#estructuras iterativas

#while
user=""
while [[ $user != "admin" ]]; do
	read -p "Cual es tu usuario??" user
done

#For
for i in {1..5}; do
	echo "El numero es  $i"
done

for ((i=0; i<5; i++)); do
	echo "*El numero es $i"
done 

invitados=(pedro juan david maria lulu ivan)
for invitado in ${invitados[@]}; do
	echo "HOLA $invitado"
done

#Funciones
suma(){
	echo "Hola desde la funcion sumar"
}

resta(){
	echo $(( $1-$2))
}

suma
total=$(resta 9 4)
echo "El total es $total"
