#!/bin/sh
for i in A B C
do
  mkdir D$i
  for j in 1 2 3
  do
    touch D$i/f${i,,}$j
  done
done
