#!/bin/bash
#Arrays
myArray=(1 2 3.5 Hello "Hi Teja")
echo "${myArray[0]}"
echo "${myArray[1]}"
echo "${myArray[2]}"
echo "${myArray[*]}"
echo "length of Array is ${#myArray[*]}"
echo "Getting specific value ${myArray[*]:0:2}"
#Updating the array with new values
myArray+=(New 56 45)
echo "added new values ${myArray[*]}"
#Array Key Value pair concept
declare -A ourArray
ourArray=( [age]=25 [gender]=male )
echo "Age is ${ourArray[age]}"
echo "Gender is ${ourArray[gender]}"
