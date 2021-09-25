#!/bin/sh

listar(){
  echo ¿Sobre que directorio quiere actuar?
  read directorio
  ls -la $directorio
}

eliminarZero(){
  echo ¿Sobre que directorio quiere actuar?
  read directorio
  echo hola
}

eliminarObjetos(){
  echo ¿Sobre que directorio quiere actuar?
  read directorio
  echo hola
}

eliminarExt(){
  echo ¿Sobre que directorio quiere actuar?
  read directorio
  echo hola
}

while [ true ]
do
echo "Escoja una opción:
1) Listar el contenido mostrando el propietario
2) Eliminar los archivos de tamaño 0
3) Eliminar los archivos objetos (*.o)
4) Eliminar con una extensión concreta
5) Salir"
read opcion
case $opcion in 
  1) listar;;
  2) eliminarZero;;
  3) eliminarObjetos;;
  4) eliminarExt;;
  5) break;;
  *) echo Por favor, introduzca una opción válida;;
esac
done
