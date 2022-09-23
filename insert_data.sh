#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "truncate games,teams")"
cat games.csv | while IFS="," read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do
echo $YEAR, $ROUND, $WINNER, $OPPONENT, $WINNER_GOALS, $OPPONENT_GOALS 
TEAMS= $($PSQL "SELECT * FROM TEAMS WHERE NAME='$WINNER'")
if [[ $WINNER != 'winner' ]]
then
if [[ -z $TEAMS ]]
then
INSERT_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
fi
TEAM_ID=$($PSQL "select team_id from teams where NAME='$WINNER'")
fi
TEAMO=$($PSQL "SELECT * FROM TEAMS WHERE NAME='$OPPONENT'")
if [[ $OPPONENT != 'opponent' ]]
then
if [[ -z $TEAMO ]]
then
INSERT_TEAMS=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
fi
TEAMO_ID=$($PSQL "select team_id from teams where NAME='$OPPONENT'")
fi
INSERT_GAMES=$($PSQL "INSERT INTO games(year, round, winner_goals, opponent_goals,winner_id,opponent_id) VALUES('$YEAR', '$ROUND',$WINNER_GOALS, $OPPONENT_GOALS,$TEAM_ID, $TEAMO_ID)")





done
