#!/bin/bash

firstName="^[A-Z][a-zA-Z]{2,}$"
valiedEmail="^[a-zA-Z]{1,}([.]?[a-zA-Z]{1,})?[@]{1}[a-zA-Z]{1,}[.]{1}[a-z]{2}([.]?[a-z]{2})?$"
moPattern="^[0-9]{2}[ ]{1}[0-9]{10}"
passwordPattern="^([a-zA-Z]*[0-9]+[a-z0-9]*[A-Z])|([A-Z][a-z0-9]*+[0-9][a-zA-Z]*)$"

read -p "Enter a First name " firstname
read -p "Enter a Second name " lastname
read -p "Enter a email " email
read -p "Enter a Mobile Number" mobileNumber
read -p "Enter a Password " password

function checkPassWord()
{ 
   if [[ ${#password} -gt 7 && $password =~ $passwordPattern ]]
   then
      printf "Valied\n"
   else
      printf "Invalied\n"
   fi
}


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
checkPassWord
