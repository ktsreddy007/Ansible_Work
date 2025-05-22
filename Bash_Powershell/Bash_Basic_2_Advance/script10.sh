#!/bin/bash
#To read content from file
while read myvar
do
	echo "Value from file is $myvar"
done < egfiles
#################################
#To read content from a CSV file
cat test.csv | awk 'NR!=1 {print}' | while IFS="," read id name age
do
	echo "Id is $id"
	echo "name is $name"
	echo "age is $age"
done

