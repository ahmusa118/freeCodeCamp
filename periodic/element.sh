PSQL="psql -X --username=freecodecamp --dbname=periodic_table --tuples-only -c"
if [[ $1 ]]
  then
   if [[ $1 =~ ^[0-9]+$ ]]
    then
    ATOM=$($PSQL "select atomic_number from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where atomic_number=$1")
    NAME=$($PSQL "select name from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where atomic_number=$1")
    SYMBOL=$($PSQL "select symbol from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where atomic_number=$1")
    TYPE=$($PSQL "select type from properties full join types using (type_id) where  atomic_number=$1")
    MASS=$($PSQL "select ATOMIC_MASS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where atomic_number=$1")
    MEL=$($PSQL "select MELTING_POINT_CELSIUS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where atomic_number=$1")
    BOL=$($PSQL "select BOILING_POINT_CELSIUS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where atomic_number=$1")
    SYMBOL_FORMAT=$(echo $SYMBOL | sed 's/( |//')
   RESULT="The element with atomic number $ATOM is $NAME ($SYMBOL_FORMAT). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MEL celsius and a boiling point of $BOL celsius."
   if [[ -z $ATOM ]]
   then
   echo "I could not find that element in the database."
   else
   echo $RESULT
   fi
    elif [[ $1 =~ ^[A-Z]$ || $1 =~ ^[A-Z][A-Z]$ || $1 =~ ^[A-Z][a-z]$ ]]
    then
    ATOM=$($PSQL "select ATOMIC_NUMBER from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where symbol='$1'")
   NAME=$($PSQL "select name from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where symbol='$1'")
    SYMBOL=$($PSQL "select symbol from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where symbol='$1'")
    TYPE=$($PSQL " select type from properties full join types using (type_id) full join elements using (atomic_number) where symbol='$1'")
    MASS=$($PSQL "select ATOMIC_MASS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where symbol='$1'")
    MEL=$($PSQL "select MELTING_POINT_CELSIUS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where symbol='$1'")
    BOL=$($PSQL "select BOILING_POINT_CELSIUS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where symbol='$1'")
   SYMBOL_FORMAT=$(echo $SYMBOL | sed 's/( |//')
  
   RESULT="The element with atomic number $ATOM is $NAME ($SYMBOL_FORMAT). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MEL celsius and a boiling point of $BOL celsius."
     
  if [[ -z $SYMBOL ]]
   then
   echo "I could not find that element in the database."
   else
   echo $RESULT
   fi
   elif [[ $1 =~ ^[A-Z][a-z]+$ || $1 =~ ^[a-z][a-z][A-Z][a-z]+$ ]]
    then
    ATOM=$($PSQL "select ATOMIC_NUMBER from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where name='$1'")
   NAME=$($PSQL "select name from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where name='$1'")
    SYMBOL=$($PSQL "select symbol from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where name='$1'")
    TYPE=$($PSQL "select type from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where name='$1'")
    MASS=$($PSQL "select ATOMIC_MASS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where name='$1'")
    MEL=$($PSQL "select MELTING_POINT_CELSIUS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where name='$1'")
    BOL=$($PSQL "select BOILING_POINT_CELSIUS from elements FULL JOIN PROPERTIES using (atomic_number) full join types using (type_id) where name='$1'")
  SYMBOL_FORMAT=$(echo $SYMBOL | sed 's/( |//')
   RESULT="The element with atomic number $ATOM is $NAME ($SYMBOL_FORMAT). It's a $TYPE, with a mass of $MASS amu. $NAME has a melting point of $MEL celsius and a boiling point of $BOL celsius."
   if [[ -z $NAME ]]
   then
   echo "I could not find that element in the database."
   else
   echo $RESULT
   fi
    else
    echo "I could not find that element in the database."
    fi
   else
   echo "Please provide an element as an argument."
   
  fi
