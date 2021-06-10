
#!/bin/bash

for ip in $(seq 1 20); do
ping -c 1 $1.$ip | grep  "64 bytes" | cut -d " " -f4 | tr -d ":" &
done

