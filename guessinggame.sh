#/usr/bin/env bash
# File: guessinggame.sh

function guessinggame (){
    no_of_files=$(pwd | ls | wc -l)
    while true;
    do
        echo "please enter your guess"
        read number
        if [ $number -lt $no_of_files ]
        then
            echo "Your guess is too low!"
        elif [ $number -gt $no_of_files ]
        then
            echo "Your guess is too high!"
        else
            echo "Your guess is correct!"
            break
        fi

        echo "Guess again: "
        read guess
    done
}
    echo "How many files are in the current directory?"
    guessinggame
