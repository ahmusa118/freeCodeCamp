#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
echo "Enter your username:"
read USERNAME

GET_ID=$($PSQL "select username from game where username='$USERNAME'")
 ID2=$($PSQL "select game_id from game where username='$USERNAME'")
if [[ -z $GET_ID ]]
then

echo "Welcome, $USERNAME! It looks like this is your first time here."
 INSERT=$($PSQL "INSERT INTO GAME(USERNAME) VALUES('$USERNAME')")
else

 GAMES_PLAYED=$($PSQL "select count(game_id) from user_info where game_id=$ID2")
BEST_GAME=$($PSQL "select max(plays) from user_info where game_id=$ID2")

 echo "Welcome back, $USERNAME! You have played $GAMES_PLAYED games, and your best game took $BEST_GAME guesses."
 fi
 ID=$($PSQL "select game_id from game where username='$USERNAME'")
 SECRET_NUMBER=$(( $RANDOM % 1000 + 1 ))


INPUT(){
  read NUMBER

  if [[ ! $NUMBER =~ ^[0-9]+$ ]]
then
echo "That is not an integer, guess again:"
i=$(( $i + 1 ))
echo $i
INPUT
fi
  if [[ $NUMBER -gt $SECRET_NUMBER ]]
then
i=$(( $i + 1 ))
echo "It's lower than that, guess again:"
INPUT
 fi
 if [[ $NUMBER -lt $SECRET_NUMBER ]]
 then
 i=$(( $i + 1 ))
 echo "It's higher than that, guess again:"


 INPUT
 fi
}

 PLAY_GAME(){
  GUESS=1
  i=0
echo "Guess the secret number between 1 and 1000:"
read NUMBER
if [[ ! $NUMBER =~ ^[0-9]+$ ]]
then
i=$(( $i + 1 ))

echo "That is not an integer, guess again:"

INPUT
fi

if [[ $NUMBER -gt $SECRET_NUMBER ]]
then
i=$(( $i + 1 ))
echo "It's lower than that, guess again:"


INPUT
 fi
 if [[ $NUMBER -lt $SECRET_NUMBER ]]
 then
  i=$(( $i + 1 ))
 echo "It's higher than that, guess again:"


 INPUT
 fi
GUESS=$(( $GUESS + 1 ))
 if [[ $NUMBER == $SECRET_NUMBER ]]
then 
i=$(( $i + 1 ))
echo "You guessed it in $i tries. The secret number was $SECRET_NUMBER. Nice job!"
INSERT=$($PSQL "insert into user_info (plays,game_id) values ($i,$ID)")
fi
 }
 PLAY_GAME