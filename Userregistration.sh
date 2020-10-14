#!/bin/bash -x
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
	useremail="^([a-zA-Z0-9\.\-\+]+)@([a-zA-Z0-9\.]{1,5})([a-zA-Z\.]+){1,4}([a-zA-Z]{1,3})$"
	if [[ $1 =~ $useremail ]]
	then
        	echo "email is valid"
	else
        	echo "email is invalid"
	fi
}
Email $mailid

read -p "Enter your phone number: " number
match="^[1-9]{2}\ [7-9]{1}[0-9]{9}$"
if [[ $number =~ $match ]];
then
        echo "phone number is valid"
else
        echo "phone number is invalid"
fi

read -p "Enter the password :" password
pattern="^([A-Z]+)([0-9]+)[@#$%^&*]{1}[0-9a-zA-Z\@\#\$\%\^\&\*]{5,20}$"
if [[ $password =~ $pattern ]];
then
        echo "valid"
else
        echo "invalid"
fi


