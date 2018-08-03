#!/bin/sh

i=0
k=0

while [ 1 ]
do
   i=$((i+1))
   if [ "$i" -eq 5000 ]; then echo "STAMP-$k" && k=$((k+1)) && i=0; fi
   instruction=$(shuf -i 0-4 -n 1)
   d=`date -Iseconds`
   case "$instruction" in
      "1") echo -n "DEDUG " && head -c 2000 < /dev/zero | tr '\0' '\154' && echo
      ;;
      "2") echo -n "INFO " && head -c 2000 < /dev/zero | tr '\0' '\154' && echo
      ;;
      "3") echo -n "ERROR " && head -c 2000 < /dev/zero | tr '\0' '\154' && echo
      ;;
      "4") echo -n "WARN " && head -c 2000 < /dev/zero | tr '\0' '\154' && echo
      ;;
   esac
done
