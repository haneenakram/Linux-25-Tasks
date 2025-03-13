#!/bin/bash

countdown() {
    local number=$1
    while [ $number -ge 0 ]; do
        echo $number
        sleep 1
        ((number--))
    done
    echo "Time's up!"
}

read -p "Enter a starting number: " starting_number

countdown $starting_number
