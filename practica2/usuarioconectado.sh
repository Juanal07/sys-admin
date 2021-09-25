#!/bin/sh
usuarios=`who -u | awk '{print$1}'`
encontrado=NO
for u in $usuarios 
do
  if [ $u = $1 ]
  then encontrado=SI 
  fi
done
echo $encontrado
