#  Escanearemos cuales hosts estan activos (vivos) dentro de una red de IPs.
#
#!/bin/bash

is_alive_ping(){
	ping -c 1 $1 > /dev/null
	[ $? -eq 0 ] && echo "Node with IP: $i is up"
}

for i in 10.0.2.{1..255}
do
	is_alive_ping $i & disown
done
