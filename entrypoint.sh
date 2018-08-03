#!/bin/sh

while [ 1 ]
do
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
