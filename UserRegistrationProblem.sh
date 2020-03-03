#!/bin/bash

firstName="^[A-Z][a-zA-Z]{2,}$"
read -p "Enter a first name " userValue

# check patter match or not
function checkPattern()
{ 
	if [[ $1 =~ $2 ]]
	then
		printf "This pattern is match\n"
	else
		printf "Entern valied  Pattern\n"
	fi
}
checkPattern $userValue $firstName
