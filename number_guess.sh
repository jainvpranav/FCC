#!/bin/bash

PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"

RANDOM_NUM=$(( $RANDOM % 1000 + 1 ))
echo $RANDOM_NUM
echo "Enter your username:"
read USERNAME

USER_ID=$($PSQL "SELECT user_id FROM users WHERE username='$USERNAME';")

if [[ -z $USER_ID ]]
  then
    echo "Welcome, $USERNAME! It looks like this is your first time here."
    INSERT_USERNAME=$($PSQL "INSERT INTO users(username, games_played, best_game) VALUES('$USERNAME', 1, 0);")
  else 
    GAMES_PLAYED=$($PSQL "SELECT games_played FROM users WHERE user_id=$USER_ID;")
    BEST_GAME=$($PSQL "SELECT best_game FROM users WHERE user_id=$USER_ID;")
    # cat $($PSQL "SELECT games_played, best_game FROM users WHERE user_id=$USER_ID") | read GP|BG
    echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
    GAME_INCREE=$($PSQL "UPDATE users SET games_played=games_played+1 WHERE username='$USERNAME';")
fi

NO_OF_GUESSES=1

echo "Guess the secret number between 1 and 1000:"
while [[ $GUESS != $RANDOM_NUM ]]
do
read GUESS
if ! [[ $GUESS =~ ^-?[0-9]+$ ]]
then
  echo "That is not an integer, guess again:"
fi
if [[ $GUESS == $RANDOM_NUM ]]
then
  echo "You guessed it in $NO_OF_GUESSES tries. The secret number was $RANDOM_NUM. Nice job!"
  BEST=$($PSQL "SELECT best_game FROM users WHERE user_id='$USER_ID';")
  if [[ $BEST == 0 ]]
  then
    BEST_ONE=$($PSQL "UPDATE users SET best_game=$NO_OF_GUESSES WHERE username='$USERNAME';")
  elif [[ $NO_OF_GUESSES > $BEST ]]
  then
    CURR_BEST=$($PSQL "UPDATE users SET best_game=$NO_OF_GUESSES WHERE username='$USERNAME';")
  else 
    break
  fi
elif [[ $GUESS < $RANDOM_NUM ]]
then
  echo "It's higher than that, guess again:"
  ((NO_OF_GUESSES+=1))
else 
  echo "It's lower than that, guess again:"
  ((NO_OF_GUESSES+=1))
fi
done