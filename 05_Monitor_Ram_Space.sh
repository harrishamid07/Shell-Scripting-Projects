#!/bin/bash
FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=500

if [[ $FREE_SPACE -lt $TH ]]
then
    echo "Ram is Running Low because "
else
    echo "Sufficient Space"
fi