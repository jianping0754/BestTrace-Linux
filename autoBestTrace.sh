#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
    wget https://github.com/jianping0754/BestTrace-Linux/raw/master/besttrace
    # unzip besttrace4linux.zip
    chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(119.121.63.37 113.103.56.131 )
ip_addr=(汕头电信CN2 汕头电信)
# ip_len=${#ip_list[@]}

for i in {0..1}
do
	echo ${ip_addr[$i]}
	./besttrace -q 1 ${ip_list[$i]}
	next
done
