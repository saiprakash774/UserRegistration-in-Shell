#!/bin/bash
read -p "Enter your first name: " firstname
function Name ()
{
	username="^([A-Z]+)([A-Za-z]{2,20})$"
	if [[ $1 =~ $username ]]
	then
        	echo "valid"
	else
        	echo "invalid"
	fi
}
Name $firstname
read -p "Enter your last name: " lastname
Name $lastname
