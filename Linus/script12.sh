#! /bin/bash
#Break and Continue concepts

no=6

for i in 1 2 3 4 5 6 7 8
do
	if [[ $no -eq $i ]]
	then
		echo "$no is found"
		break
	fi
	echo "Number is $i"
done
####################################################
for i in 1 2 3 4 5 6 7 8 9
do
	let r=$i%2 
	if [[ $r -eq 0 ]]
	then
		continue
	fi
	echo "odd no is $i"
done
