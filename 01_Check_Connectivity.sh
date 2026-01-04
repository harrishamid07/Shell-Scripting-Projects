#!/bin/bash

read -p "Enter Site Name or Ip Address to Check ? " site

ping -c 1 $site

if [ $? -eq 0 ]
then
echo "Connection is Successful"
else
echo "Failed to Connect"
fi
