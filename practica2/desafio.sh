#!/bin/sh
echo desafio

grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'


grep 'NAME' /etc/os-release
