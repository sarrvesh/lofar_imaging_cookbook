#!/bin/bash
for file in ./build/html/*.html; 
do
   x="$(tail -n 2 $file | wc -c)"
   truncate --size=-$x $file
   cat ./statcounter >> $file
   echo -e '\n</body>\n</html>' >> $file
done
