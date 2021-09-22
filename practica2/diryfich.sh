#!/bin/sh

if [ $# -eq 2 -a -d $1 ]
then 
  echo tiene 2 parametros y el 1 es un directorio
  echo Nº de ficheros con la extensión .$2: `ls -p $1 | grep -E "*\.$2$" | grep -v / | wc -l`
  echo Nº de directorios: `ls -p | grep -E $1 | wc -l`
elif [ $# -eq 2 ] 
then echo Directorio no existente
fi

if [ $# -eq 1 ]
then 
  echo tiene 1 parametro
  echo Nº de ficheros con la extensión .$1: `ls -p | grep -E "*\.$1$" | grep -v / | wc -l`
  echo Nº de directorios: `ls -p | grep -E / | wc -l`
fi

if [ $# -eq 0 ]
then
  echo tiene 0 parametros
  echo Nº de ficheros con sin extensión: `ls -p | grep -v / | grep -v "\." | wc -l`
  echo Nº de directorios: `ls -p | grep -E / | wc -l`
fi

if [ $# -gt 2 ]
then echo Demasiados parametros
fi
