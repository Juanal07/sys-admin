#!/bin/sh
if [ $# -eq 2 ]
  then if [ -d $1 ]
  then
    echo Tiene 2 argumentos y el 1 es un directorio
    echo Nº de ficheros con la extensión .$2: `ls -p $1 | grep -E "*\.$2$" | grep -v / | wc -l`
    echo Nº de directorios: `ls -p $1 | grep -E / | wc -l`
  else [ $# -eq 2 ] 
    echo Directorio no existente
  fi
fi

if [ $# -eq 1 ]
then 
  echo Tiene 1 argumento
  echo Nº de ficheros con la extensión .$1 en el directorio actual: `ls -p | grep -E "*\.$1$" | grep -v / | wc -l`
  echo Nº de directorios: `ls -p | grep -E / | wc -l`
fi

if [ $# -eq 0 ]
then
  echo Tiene 0 argumentos
  echo Nº de ficheros sin extensión en el directorio actual: `ls -p | grep -v / | grep -v "\." | wc -l`
  echo Nº de directorios: `ls -p | grep -E / | wc -l`
fi

if [ $# -gt 2 ]
then echo Demasiados argumentos
fi
