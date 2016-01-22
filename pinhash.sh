#!/bin/bash
for pin in $(seq -f "%03g" 1 9)
do
 printf -v j "%03g" $pin
 hash=($(echo $pin |md5sum))
echo "$j : $hash" 
done
