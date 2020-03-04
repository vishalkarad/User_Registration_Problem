#!/bin/bash

firstName="^[A-Z][a-zA-Z]{2,}$"
valiedEmail="^[a-zA-Z]{1,}([.]?[a-zA-Z]{1,})?[@]{1}[a-zA-Z]{1,}[.]{1}[a-z]{2}([.]?[a-z]{2})?$"
moPattern="^[0-9]{2}[ ]{1}[0-9]{10}"
passwordPattern="[a-zA-Z]{8,}$"
read -p "Enter a First name " firstname
read -p "Enter a Second name " lastname
read -p "Enter a email " email
read -p "Enter a Mobile Number" mobileNumber
read -p "Enter a Password " password


# check patter match or not
function checkPattern()
{ 
	if [[ $1 =~ $2 ]]
	then
		printf "Valied\n"
	else
		printf "Invalied\n"
	fi
}

# check mobile pattern
function CheckMobilePattern()
{ 
   if [[ $mobileNumber =~ $moPattern ]]
   then
      printf "Valied\n"
   else
      printf "Invalied\n"
   fi
}
checkPattern $firstname $firstName
checkPattern $lastname $firstName
checkPattern  $email $valiedEmail
CheckMobilePattern
checkPattern $password $passwordPattern
