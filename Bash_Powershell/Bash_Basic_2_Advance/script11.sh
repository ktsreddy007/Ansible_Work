#!/bin/bash
# Functions concept
function welcome
{
	echo "------------------------------"
	echo "Welcome"
	echo "------------------------------"
}
###################################################
#Functions with arguments
mywelcome()
{
	num1=$1
	num2=$2
	sum=$((num1 + num2))
	echo "sum of $num1 and $num2 is $sum"
}
#To call our function
welcome
mywelcome 2 3 
###################################################
for filename in $@
do
	echo "Copying file - $filename"
done

