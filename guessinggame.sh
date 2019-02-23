#!/usr/bin/env bash

dir_items=$(ls | wc -l)  # get the number of items in the current directory

function get_guess {
	echo "Please enter a number:"
	read response
	echo "You entered: $response"
}

clear
echo "Guess how many files are in the current directory."
get_guess

# compare numeric response to dir_items
while [[ $response -ne $dir_items ]]
do
	# if response < dir_items 
	if [[ $response -lt $dir_items ]]
	then
  	  echo "Your answer is too low."
	  get_guess
	# if response > dir_items 
	elif  [[ $response -gt $dir_items ]]
	then
  	  echo "Your answer is too high."
	  get_guess
  fi
done

# if response == dir_items
echo "You have correctly guessed $response. You are very clever. Congratulations!"
echo "End program"
