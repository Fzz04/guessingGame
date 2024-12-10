#!/usr/bin/env bash

# File: guessinggame.sh

# Function to get the number of files in the current directory
function get_file_count {
  echo $(ls -1 | wc -l)
}

# Get the actual number of files
file_count=$(get_file_count)

echo "Welcome to the Guessing Game!"
echo "Can you guess how many files are in the current directory?"

while true; do
  # Prompt user for input
  read -p "Enter your guess: " guess

  # Validate input
  if ! [[ "$guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
    continue
  fi

  # Compare the guess with the actual file count
  if [[ $guess -lt $file_count ]]; then
    echo "Too low! Try again."
  elif [[ $guess -gt $file_count ]]; then
    echo "Too high! Try again."
  else
    echo "Congratulations! You guessed it right!"
    break
  fi
done
