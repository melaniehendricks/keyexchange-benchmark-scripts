 #!/bin/bash
 2
 3 # client
 4
 5 # argument 0: $0 = program name
 6 # argument 1: connect $1 number of times
 7 # argument 2: specifies classical ECC or hybrid ECC/MLKEM (Kyber)
 8
 9 crypto=""
10
11 if [[ $2 == "classical" ]]; then
12     crypto=X25519
13 else 
14     crypto=X25519MLKEM768
15 fi
16 echo "Connecting to server $1 times using $crypto..."
17
18 for ((i=1;i<=$1;i++));do
19     echo "GET /" | ./bssl s_client -connect localhost:4433 -curves "$crypto" &>/dev/null
20 done
21
