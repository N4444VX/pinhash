 #!/bin/bash
for pin in $(seq -f "%05g" 1 99999)
do
 printf -v j "%05g" $pin
 hash=($(echo -n $pin |md5sum))
echo "$j : $hash" >> pinhash5.txt
done
