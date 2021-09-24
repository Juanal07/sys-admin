#!/bin/sh
echo profundidad
# profundidad(){
  
# }

max=0
for f in `ls -p | grep -E /`; do
  echo "Dirs -> $f"
  profundidad()
  actualizar max
done
return 1+$max
