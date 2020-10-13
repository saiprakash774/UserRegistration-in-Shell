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
read -p "Enter your mail id: " mailid
function Email ()
{
	useremail="^([a-zA-Z\.]+)([a-zA-Z]+)@([a-z]+)\.([a-zA-Z\.]{2,5})$"
	if [[ $1 =~ $useremail ]]
	then
        	echo "email is valid"
	else
        	echo "email is invalid"
	fi
}
Email $mailid
