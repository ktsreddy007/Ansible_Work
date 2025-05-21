#! /bin/bash
#Code about comments & variables.
# comments are given with # 
echo "Hello World" #this a type of comment"
############################################################
#In Shell we have 2 type of varibales - System &  Userdefined
echo $BASH
echo $BASH_VERSION
name=Teja
name2="Teja Surendar Reddy"
echo "the name is $name and full name $name2" 
a=10
age=28
myvar=$(hostname)
echo "This system is $myvar"
############################################################
#! /bin/bash
#Code about read user input 
echo "Enter your list:"
read list1 list2 list3
echo "Entered list is: $list1,$list2,$list3"
##############################################

