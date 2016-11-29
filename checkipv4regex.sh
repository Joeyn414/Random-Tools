#!/bin/bash
#this script takes one command line arguement which should be an ipv4 address
#+ and checks to make sure its an ipv4 address between
#+ 10.0.0.0 - 10.255.255.255 with the use of a regex

ipaddress=$1
if [[ $ipaddress =~ [10]{2}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3} ]]; then
        echo "$ipaddress is good"
else
        echo "$ipaddress is not a valid ip address"
fi
