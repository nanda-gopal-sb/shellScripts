#!/bin/bash

# Function to demonstrate reading and writing single character from user input
  read -p "Enter a single character: " -n 1 char
  echo "Read character: $char"
  echo "$char" > char_output.txt
  echo "Written character to char_output.txt"

# Function to demonstrate reading and writing a set of characters from user input
  read -p "Enter a set of characters (e.g., abcdefg): " chars
  echo "Read characters: $chars"
  echo "$chars" > chars_output.txt
  echo "Written characters to chars_output.txt"

# Function to demonstrate reading and writing a single string from user input
  read -p "Enter a string: " string
  echo "Read string: $string"
  echo "$string" > string_output.txt
  echo "Written string to string_output.txt"

# Function to demonstrate reading and writing a set of strings from user input
  strings=() #array
  read -p "Enter the number of strings: " num_strings

  for ((i = 1; i <= num_strings; i++)); do
    read -p "Enter string $i: " str
    strings+=("$str")
  done

  echo "Read strings: ${strings[@]}"
  for str in "${strings[@]}"; do
    echo "$str" >> strings_output.txt
  done
  echo "Written strings to strings_output.txt"

# Function to demonstrate reading and writing a single number from user input
  read -p "Enter a number: " number
  echo "Read number: $number"
  echo "$number" > number_output.txt
  echo "Written number to number_output.txt"

# Function to demonstrate reading and writing a set of numbers from user input
  numbers=()  #array
  read -p "Enter the number of numbers: " num_numbers
  for ((i = 1; i <= num_numbers; i++)); do
    read -p "Enter number $i: " num
    numbers+=("$num")
  done
  echo "Read numbers: ${numbers[@]}"
  for num in "${numbers[@]}"; do
    echo "$num" >> numbers_output.txt
  done
  echo "Written numbers to numbers_output.txt"
