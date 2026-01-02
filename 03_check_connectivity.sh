#!/bin/bash

read -p "Enter your Hostname or Ip Address to see Connectivity"  site
ping -c 1 $site

if [ $? -eq 0 ]
then
echo "Connection was Successful and stabled"
else
echo "Connection Failed"
fi
