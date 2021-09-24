#!/bin/sh
usuarios=`who -u | awk '{print$1}'`
encontrado=NO
for f in $usuarios 
do
  if [ $f = $1 ]
  then encontrado=SI 
  fi
done
echo $encontrado
