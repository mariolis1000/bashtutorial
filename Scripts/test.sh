#!/bin/bash

#number operations
my_func(){
  num1=10
  num2=2
  echo $((num1 + num2))
}

#string operations
my_out(){
  first="Mar"
  last="Rou"
  result="$first $last"
  echo $result
}

#basic array and loop functionality
my_arrloop(){
my_num=(2 3 7)
#echo ${my_num[0]}
for ite in ${my_num[@]}; do
  echo $ite
done  
}


#associative array
#similar to a map or dictionary 
  # -A makes it associative array
  # -a makes it indexed array
  # by default it declares variables
my_ass_arr(){
declare -A colors
colors[olympiacos]="red"
colors[aek]="yellow"
colors[paok]="black"
colors[panathinaikos]="green"
echo ${colors[aek]}
#for omada in ${colors[@]}; do
#  echo $omada
#done
}
#my_ass_arr



