 #!/bin/bash
for pin in $(seq -f "%04g" 1 9999)
do
 printf -v j "%04g" $pin
 hash=($(echo -n $pin |md5sum))
echo "$j : $hash" >> /home/jonathan/scripts/pinhash/pinhash4.txt
done
