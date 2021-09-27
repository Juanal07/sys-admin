#!/bin/sh

# echo CPU: `grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'`
# echo RAM: `free --mebi | sed -n '2{p;q}' | awk '{printf ("%2.2fGiB/%2.2fGiB\n", ( $3 / 1024), ($2 / 1024))}'`
# echo DISCO: `df -h / | awk ' /[0-9]/ {print $3 "/" $2}'`
# echo Interfaces: `ip link show`
# echo IPs: `ip addr | grep inet`
# echo Usuario: `whoami`
# echo OS: `grep 'PRETTY_NAME' /etc/os-release | grep -Eo '".*"'`

recursos(){
  while [ true ]
  do
  echo "Escoja una opción:
  1) Uso de CPU
  2) Uso de memoria
  3) Uso de disco
  4) Atrás"
  read opcion
  case $opcion in 
    1) echo CPU: `grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'`;;
    2) echo RAM: `free --mebi | sed -n '2{p;q}' | awk '{printf ("%2.2fGiB/%2.2fGiB\n", ( $3 / 1024), ($2 / 1024))}'`;;
    3) echo DISCO: `df -h / | awk ' /[0-9]/ {print $3 "/" $2}'`;;
    4) break;;
    *) echo Por favor, introduzca una opción válida;;
  esac
  done
}

conectividad(){
  while [ true ]
  do
  echo "Escoja una opción:
  1) Listado de interfaces
  2) IPs asignadas
  3) Atrás"
  read opcion
  case $opcion in 
    1) echo Interfaces: `ip link show`;;
    2) echo IPs: `ip addr | grep inet`;;
    3) break;;
    *) echo Por favor, introduzca una opción válida;;
  esac
  done
}

general(){
  while [ true ]
  do
  echo "Escoja una opción:
  1) Usuario actual
  2) SO actual
  3) Atrás"
  read opcion
  case $opcion in 
    1) echo Usuario: `whoami`;;
    2) echo OS: `grep 'PRETTY_NAME' /etc/os-release | grep -Eo '".*"'`;;
    3) break;;
    *) echo Por favor, introduzca una opción válida;;
  esac
  done
}

while [ true ]
do
echo "Escoja una opción:
1) Uso de recursos
2) Conectividad
3) Informacion general
4) Salir"
read opcion
case $opcion in 
  1) recursos;;
  2) conectividad;;
  3) general;;
  4) break;;
  *) echo Por favor, introduzca una opción válida;;
esac
done
