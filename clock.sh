#Basically runs a shell script that gives you a clock updated every second.
#Needs to have figlet installed
#Feel free to mess around with the date and figlet commands





#!/bin/bash
for (( i=1 ; i>=0 ; i++ )); 
do
    date +%T|figlet -f standard
    sleep 1
    clear
done
