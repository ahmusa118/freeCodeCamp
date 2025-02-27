#! /bin/bash

PSQL="psql --username=freecodecamp --dbname=worldcup --no-align --tuples-only -c"

# Do not change code above this line. Use the PSQL variable above to query your database.

echo -e "\nTotal number of goals in all games from winning teams:"
echo "$($PSQL "SELECT SUM(winner_goals) FROM games")"

echo -e "\nTotal number of goals in all games from both teams combined:"
echo "$($PSQL "select sum(opponent_goals) + sum(winner_goals) from games")"

echo -e "\nAverage number of goals in all games from the winning teams:"
echo "$($PSQL "SELECT AVG(winner_goals) FROM games")"

echo -e "\nAverage number of goals in all games from the winning teams rounded to two decimal places:"
echo "$($PSQL "SELECT ROUND(AVG(winner_goals),2) FROM games")"

echo -e "\nAverage number of goals in all games from both teams:"
echo "$($PSQL "SELECT (avg(winner_goals + opponent_goals)) from games")"

echo -e "\nMost goals scored in a single game by one team:"
echo "$($PSQL "SELECT Max(winner_goals) FROM games")"

echo -e "\nNumber of games where the winning team scored more than two goals:"
echo "$($PSQL  "select count(*) from games where winner_goals>2")"

echo -e "\nWinner of the 2018 tournament team name:"
echo "$($PSQL "select name from teams full join games on teams.team_id=games.winner_id where year=2018 and round='Final' and winner_id is not null")"

echo -e "\nList of teams who played in the 2014 'Eighth-Final' round:"
echo "$($PSQL "select name from teams left join games on teams.team_id=games.winner_id or teams.team_id=games.opponent_id where round='Eighth-Final' and year=2014 order by name asc")"

echo -e "\nList of unique winning team names in the whole data set:"
echo "$($PSQL "select distinct(name)  from teams full join games on teams.team_id=games.winner_id where winner_id is not null order by name asc")"

echo -e "\nYear and team name of all the champions:"
echo "$($PSQL "select year,name  from teams full join games on teams.team_id=games.winner_id where winner_id is not null and round='Final' order by year")"

echo -e "\nList of teams that start with 'Co':"
echo "$($PSQL "select name from teams full join games on teams.team_id=games.winner_id where name like 'Co%'")"
