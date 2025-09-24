#!/usr/bin/env bash

#read name             #reads from the terminal and stores in variable
name="Mar"
echo "Hello, $name"   #how to print out variable        
echo 'Hello, $name'   #prints the literal characters
echo "Hello, ${#name}" #prints the number of characters stored in $name


name2=""
echo "Hello, ${name2:="Default"}" #sets default value to a variable if empty
