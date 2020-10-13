#!/bin/bash
read -p "Enter First name " Firstname
match="^([A-Z]+)[a-z]{2,20}$"
if [[ $Firstname =~ $match ]];
then
        echo "valid"
else
        echo "invalid"
fi
