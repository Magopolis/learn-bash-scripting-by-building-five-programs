#!/bin/bash

# Program to tell a persons fortune

echo -e "\n~~ Fortune Teller ~~\n"
VAR="hello world"
RESPONSES=("Yes" "No" "Maybe" "Outlook good" "Don't count on it" "Ask again later")
N=$(( RANDOM % 6 ))

GET_FORTUNE() {
  echo Ask a yes or no question:
}
until [[ $QUESTION =~ \?$ ]]
do
GET_FORTUNE again
if [[ ! $1 ]]
then
  echo Try again. Make sure it ends with a question mark:
fi

read QUESTION
done

echo -e "\n${RESPONSES[$N]}"
