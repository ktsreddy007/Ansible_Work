#!/bin/bash
# Logical operators AND , OR
read -p "what is ur age" age
read -p "what is ur country" country
if [[ $age -ge 18 ]] && [[ $country == "India" ]] || echo "Minor"
then 
	echo "u can vote"
else
	echo "u cant vote"
fi
###############################################
#For loop
for i in 1 2 3
do 
	echo "Number is $i"
done
##################################
for j in Teja Ram
do
	 echo "$j is good boy"
done
##########################
for p in {1..5}
do
	echo "$p is number"
done
###############################
#Getting values from a files  egfiles
FILE="/root/Test1/egfiles"
for name in $(cat $FILE)
do
	echo "Name is $name"
done
####################################
#Retreving Value from Array via for loop
myArray=(1 2 3 Hello)
length=${#myArray[*]}
for (( i=0;i<$length;i++ ))
do
	echo "Value of array is ${myArray[$i]}"
done
