#!/bin/sh
echo hola mundo
echo uno mas cinco `expr 1 + 5`
if [ -f s1.sh ] 
  then echo verdadero
  else echo falso
fi
