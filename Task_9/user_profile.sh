#!/bin/bash
# -p option to display the message before reading
read -p "enter your name: " name
read -p "enter your age " age
read -p "enter your favourite programming language " language
echo
echo "Thank you, $name! Your profile has been created successfully with the following details:"
echo "- Name: $name"
echo "- Age: $age"
echo "- Favorite Programming Language: $language"
