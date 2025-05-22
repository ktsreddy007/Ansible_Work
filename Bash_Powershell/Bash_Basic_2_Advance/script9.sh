#!/bin/bash
#While loop concept
count=0
num=10
while [[ $count -le $num ]]
do
	echo "Value of count var is $count"
	let count++
done
################################################
#Until loop concept
a=10
until [[ $a -eq 0 ]]
do
	echo "Value of a is $a"
	let a--
	#a=`expr $a - 1`
done
###############################################
#Infinite loop concept
while true
do
	echo "Hi buddy"
	sleep 2s
done
#######################
#Infinite loop via For loop
#for (( ;; ))
#do
#	echo "Hi buddy"
#	sleep 2s
#done
