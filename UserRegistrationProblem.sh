#!/bin/bash

firstName="^[A-Z][a-zA-Z]{2,}$"
read -p "Enter a First name " firstname
read -p "Enter a Second name " lastname

# check patter match or not
function checkPattern()
{ 
	if [[ $1 =~ $2 ]]
	then
		printf "$1 pattern is match\n"
	else
		printf "$1 Entern valied  Pattern\n"
	fi
}
checkPattern $firstname $firstName
checkPattern $lastname $firstName
