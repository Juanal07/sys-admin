#!/bin/sh
profundidad(){
  dirs=`ls -p $1 | grep -E /`
  if [ "$dirs" != "" ]
  then
    max=0
    for d in $dirs; do
      prof=`profundidad $1$d`
      if [ $max -lt $prof ]
      then
        max=$prof
      fi
    done
    echo `expr 1 + $max`
  else
    echo 0
  fi
}

profundidad $1
