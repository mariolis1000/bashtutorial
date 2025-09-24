#!/usr/bin/env bash

## Saving location paths in a variable
my_location_from=$(pwd)
cd ..
my_location_to=$(pwd)
cd "$my_location_from"

echo "$my_location_from" 
echo "$my_location_to"



