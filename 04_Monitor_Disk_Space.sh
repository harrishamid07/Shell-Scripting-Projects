#!/bin/bash
FU=$(df -H | egrep -v "Filesystem|tmps" | grep "Sda2" | awk'{print $5}' | tr -d %)
if [[ $FU -ge 80 ]]
then
    echo "Need To cleanup"
else
    echo "You have Sufficient Space"
fi
