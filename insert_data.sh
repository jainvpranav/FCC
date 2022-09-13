#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi
# Do not change code above this line. Use the PSQL variable above to query your database.
echo "$($PSQL "TRUNCATE games, teams")"

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS
do 
  if [[ $WINNER != "winner" ]]
  then
   #get winner_id
    WINNER_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
     #if not found
    if [[ -z $WINNER_ID ]]
    then
     #insert team
      INSERT_WIN=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
    fi
  fi

  if [[ $OPPONENT != "opponent" ]]
  then
  #get opponent id 
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
  #if not found
    if [[ -z $OPP_ID ]]
    then
  #insert team
      INSERT_OPP=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
    fi
  fi

  if [[ $YEAR != 'year' && $ROUND != 'round' && $WINNER != 'winner' && $OPPONENT != 'opponent' && $WINNER_GOALS != 'winner_goals' && $OPPONENT_GOALS != 'opponent_goals' ]]
  then
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    OPP_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")
    INSERT=$($PSQL "INSERT INTO games(round, winner_id, opponent_id, winner_goals, opponent_goals, year) VALUES('$ROUND', $WIN_ID, $OPP_ID, $WINNER_GOALS, $OPPONENT_GOALS, $YEAR)")
  fi
done