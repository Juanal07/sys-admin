#!/bin/sh
echo CPU: `grep 'cpu ' /proc/stat | awk '{usage=($2+$4)*100/($2+$4+$5)} END {print usage "%"}'`
echo RAM: `free --mebi | sed -n '2{p;q}' | awk '{printf ("%2.2fGiB/%2.2fGiB\n", ( $3 / 1024), ($2 / 1024))}'`
echo DISCO: `df -h / | awk ' /[0-9]/ {print $3 "/" $2}'`
echo Interfaces: `ip link show`
echo IPs: `ip addr | grep inet`
echo Usuario: `whoami`
echo OS: `grep 'PRETTY_NAME' /etc/os-release`
