#!/bin/sh

if [ $# -eq 2 -a -d $1 ]
then 
  echo Tiene 2 argumentos y el 1 es un directorio
  echo Nº de ficheros con la extensión .$2: `ls -p $1 | grep -E "*\.$2$" | grep -v / | wc -l`
  echo Nº de directorios: `ls -p | grep -E $1 | wc -l`
elif [ $# -eq 2 ] 
then echo Directorio no existente
fi

if [ $# -eq 1 ]
then 
  echo Tiene 1 argumentos
  echo Nº de ficheros con la extensión .$1 en el directorio actual: `ls -p | grep -E "*\.$1$" | grep -v / | wc -l`
  echo Nº de directorios: `ls -p | grep -E / | wc -l`
fi

if [ $# -eq 0 ]
then
  echo Tiene 0 argumentos
  echo Nº de ficheros con sin extensión en el directorio actual: `ls -p | grep -v / | grep -v "\." | wc -l`
  echo Nº de directorios: `ls -p | grep -E / | wc -l`
fi

if [ $# -gt 2 ]
then echo Demasiados argumentos
fi
