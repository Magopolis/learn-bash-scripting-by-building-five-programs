#!/bin/bash

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

GET_FORTUNE() {
  echo "Ask a yes or no question:"
  read QUESTION

  # Loop until the question ends with a question mark
  until [[ $QUESTION =~ \?$ ]]
  do
    echo "Try again. Make sure your question ends with a question mark:"
    read QUESTION
  done
}

# Call the fortune function
GET_FORTUNE

# Output a random fortune
echo -e "\n${RESPONSES[$N]}"
