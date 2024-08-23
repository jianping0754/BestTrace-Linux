#!/bin/bash

# apt -y install unzip

# install besttrace-arm
if [ ! -f "besttrace-arm" ]; then
    wget https://github.com/jianping0754/BestTrace-Linux/raw/master/besttrace-arm
    # unzip besttrace4linux.zip
    chmod +x besttrace-arm
fi

## start to use besttrace-arm

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(119.121.63.1 113.103.56.1 112.90.135.1 223.74.125.1 210.39.208.1)
ip_addr=(广东电信CN2 广东电信 广东联通 广东移动 广东教育网)
# ip_len=${#ip_list[@]}

for i in {0..4}
do
	echo ${ip_addr[$i]}
	./besttrace-arm -q 1 ${ip_list[$i]}
	next
done
