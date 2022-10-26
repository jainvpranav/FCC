#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=periodic_table --no-align --tuples-only -c"
 
ITEM_FOUND=false

if [[ ! $1 ]]
then
  echo Please provide an element as an argument.
  
else
  # is the argument an integer?
  if [[ $1 =~ ^[0-9]+$ ]]
  then
    CHECK_INTEGER=true
  else
    CHECK_INTEGER=false
  fi

  # check for atomic number entered
  if [[ $CHECK_INTEGER = true ]]
  then
    ATOMIC_NAME=$($PSQL "SELECT name FROM elements WHERE atomic_number=$1")
    if [[ $ATOMIC_NAME ]] 
    then
      #echo $ATOMIC_NAME...NAME
      ATOMIC_NUMBER=$1
      ITEM_FOUND=true
    fi
  fi
  #echo $ITEM_FOUND...
  if [[ $ITEM_FOUND = false ]]
  then
    # next check if it was a symbol
    #echo checking...
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE symbol='$1'")
    if [[ $ATOMIC_NUMBER ]]
    then
      # echo $ATOMIC_NUMBER...SYMBOL
      ITEM_FOUND=TRUE
    fi
  fi
  if [[ $ITEM_FOUND = false ]]
  then
    # check for name
    ATOMIC_NUMBER=$($PSQL "SELECT atomic_number FROM elements WHERE name='$1'")
    #echo $ATOMIC_NUMBER...name
    if [[ $ATOMIC_NUMBER ]]
    then
      ITEM_FOUND=true
    fi
  fi
  #echo $ITEM_FOUND..END

fi

if [[ $ITEM_FOUND = false ]]
  
then
  if [[ $1 ]]
    then
    echo "I could not find that element in the database."
  fi
else
  # display the element
  #echo $ATOMIC_NUMBER...END
  GET_INFO=$($PSQL "SELECT symbol,name,melting_point_celsius,boiling_point_celsius,atomic_mass,type FROM elements FULL JOIN properties using(atomic_number) FULL JOIN types USING(type_id) WHERE atomic_number=$ATOMIC_NUMBER")
  #echo $GET_INFO 
  #echo $ATOMIC_NUMBER...AFTER SYMBOL
  

  SYMBOL=$(echo $GET_INFO | sed 's/|[A-Z][a-z]*|[-.a-zA-Z0-9]*|[-.a-zA-Z0-9]*|[-.a-zA-Z0-9]*|[a-z]*//')
  REST=$(echo $GET_INFO | sed 's/[A-Za-z]*|//')
  NAME=$(echo $REST | sed 's/|[-.a-zA-Z0-9]*|[-.a-zA-Z0-9]*|[-.a-zA-Z0-9]*|[a-z]*//')
  REST=$(echo $REST | sed 's/[a-zA-Z]*|//')
  
  
  MELTING_POINT=$(echo $REST | sed 's/|[-.a-zA-Z0-9]*|[-.a-zA-Z0-9]*|[a-z]*//')
  REST=$(echo $REST | sed 's/[-.a-zA-Z0-9]*|//')
  BOILING_POINT=$(echo $REST | sed 's/|[-.a-zA-Z0-9]*|[a-z]*//')
  REST=$(echo $REST | sed 's/[-.a-zA-Z0-9]*|//')
  ATOMIC_MASS=$(echo $REST | sed 's/|[a-z]*//')
  TYPE=$(echo $REST |sed 's/[-.0-9]*|//')
 
  echo "The element with atomic number $ATOMIC_NUMBER is $NAME ($SYMBOL). It's a $TYPE, with a mass of $ATOMIC_MASS amu. $NAME has a melting point of $MELTING_POINT celsius and a boiling point of $BOILING_POINT celsius."


fi