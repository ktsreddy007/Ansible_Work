#! /bin/bash
# Code for String manipulation
myVar="Hi Teja,, bhai"
mana="Hi This is Linux"
myVars=${#myVar}
Length=${#mana}
echo "Length of mana is $Length"
echo "Length of the myVar is $myVars"
echo "Caps of ${myVar^^}"
echo "lower of ${myVar,,}"
newVar=${myVar/Teja/Raja} 
echo "replacing  of Teja ${newVar}"
echo "getting size specific---${myVar:3:9}" 
