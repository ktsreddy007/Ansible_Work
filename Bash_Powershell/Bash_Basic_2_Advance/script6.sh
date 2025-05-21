#! /bin/bash
#Arithmetic Operations
x=10
y=3
a=20
b=2

let mul=$x*$y
echo "$mul"
let sum=$x+$y
echo "$sum"
let div=$x/$y
echo "$div"

echo "value is $(($a-$b))"
