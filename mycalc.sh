#!/bin/bash
# Mesut Doganguzel
# 41014665
# CST8102_303
# mycalc.sh
# 2021-04-13
# creating a script for a basic calculation with bash

function add(){ 

#creating a function for addition
echo "The sum of $num1 plus $num2 is equal to $(($num1+$num2))"

}

function subtract(){

#creating a function for subtraction
echo "The subtraction of $num1 from $num2 is equal to $(($num1-$num2))"
}

#if the middle variable is "+" then we will add numbers 
if [ "$2" == '+' ]
then
num1=$1
num2=$3
   
#to add numbers we are calling add method
add $num1 $num2


#if the middle variable is "-" then we will subtract numbers
elif [ "$2" == '-' ] 
then
num1=$1
num2=$3

#to subtract  numbers we are calling add method
subtract $num1 $num2

#if no parameter is provided then we will show a menu
elif [ $# -eq 0 ]  
then

    menu=N
  	
    #while loop for menu
    while [ $menu != "x" ] && [ $menu != "X" ];
   
    do
	    #menu1 will show up
    echo "C) Calculation"
    echo -n "X) Exit  : "    
    read menu
       
   #if input is x, program will end
    if [ $menu == "x" ] || [ $menu == "X" ]
        then
        break 
        
    #if input is c, then program will do a calculation
	elif [ $menu == 'c' ] || [ $menu == 'C' ]
        then 
        clear

        echo  "Please enter an integer number or X to exit: " 
        read number1

            if [ $number1 == "x" ] || [ $number1 == "X" ]
            then break  #if the input is x, loop breaks
            fi

        fi

        clear
	#menu2
        echo "+) Add"
        echo "-) Subtract"
        echo -n "x) Exit" 
        read menu2


	#if input is x, program will end
                if [ $menu2 == "x" ] || [ $menu2 == "X" ]
                then break 
        
	#if input is +, then add function will be called
	
		elif [ $menu2 == '+' ] 
                then
                echo -n "Enter a number for addition: " 
                read number2
                num1=$number1
                num2=$number2
                add $num1 $num2
                
	#if input is -, then subtract function will be called
		
		elif [ $menu2 == '-' ]
                then
                echo  "Enter a  number for subtraction: " 
                read input2
                num1=$number1
               	num2=$number2
                subtract $num1 $num2 
                fi
    
done
#when x is entered
echo "See you later :("
else
	
    echo "Invalid option"
fi

