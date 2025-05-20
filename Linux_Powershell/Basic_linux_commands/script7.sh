#!/bin/bash
#If else loop
read -p "Please enter ur marks: " marks
if [[ $marks -gt 20 ]]
then
	echo "Hurrah! Your are pass"
else
	echo "sorry your are failed"
fi
############################################
read -p "Please enrer 2nd marks: " Vmarks
if [[ $Vmarks -ge 50 ]]
then
	echo "1st Division"
elif [[ $Vmarks -ge 60 ]]
then
	echo "2ns Division"
elif [[ $Vmarks -ge 40 ]]
then
	echo "3rd Division"
else
	echo "Failed"	
fi
###########################################
#Switch case concept
echo "Hi User select a option"
echo "a for current date"
echo "b for  list all scripts"
echo "c for current location"
read choice
case $choice in 
	a)date;;
	b)ls;;
	c)pwd;;
	*)echo "Please select valid choice"
esac
