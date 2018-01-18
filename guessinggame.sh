#!usr/bin/env bash
# File: guessinggame.sh

function echo_message {
    if [[ $answer -lt 0 ]]
    then
      echo "Your guess is to low"
    else
        if [[ $answer -lt $files ]]
        then
          echo "Your guess is to low"
        fi
        if [[ $answer -gt $files ]]
        then
          echo "Your guess is to high"
        fi
    fi
}

files=$(ls -l|egrep "^total"|tr ' ' '\n'| tail -1)

echo "How many files are in the current directory?"
let answer=-1
while [[ $answer -ne $files ]]
do
    echo "Enter your guess"
    read answer
    echo_message $answer $files
done
echo "Congratulations, yuu guessed there are $answer files!"

