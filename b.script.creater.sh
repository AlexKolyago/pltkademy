#!/bin/bash

for NUM in {1..10};    #creates a file every iteration

do 

#adds in each one 1000 random characters
    { tr -dc '[:graph:]' < /dev/urandom | head -c 1000; } > random_text_"$NUM".txt   
done
