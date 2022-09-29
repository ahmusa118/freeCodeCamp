#! /bin/bash
PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~~ MY SALON ~~~~~\n"

MAIN_MENU() {
  if [[ $1 ]]
  then
    echo -e "\n$1"
  fi
echo "Here are the services we offer" 
SERVICES=$($PSQL "select service_id,name from services")
echo "$SERVICES" | while read SERVICE_ID BAR NAME 
do
echo "$SERVICE_ID) $NAME"
done
 echo -e "\nWhich one would you like to do?"
 read SERVICE_ID_SELECTED
 if [[ ! $SERVICE_ID_SELECTED =~ ^[1-3]+$ ]]
    then
 MAIN_MENU "service not available"
 else 
 echo -e "\nWhat's your phone number?"
 read CUSTOMER_PHONE
 CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'")
 if [[ -z $CUSTOMER_NAME ]]
        then
          # get new customer name
          echo -e "\nWhat's your name?"
          read CUSTOMER_NAME
          INSERT_CUSTOMER_RESULT=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')") 
        fi

 echo -e "What time would you like to schedule it, $CUSTOMER_NAME"
 read SERVICE_TIME
CUSTOMER_ID=$($PSQL "SELECT CUSTOMER_ID FROM CUSTOMERS WHERE PHONE='$CUSTOMER_PHONE'")
INSERT_APP=$($PSQL "INSERT INTO APPOINTMENTS (TIME,SERVICE_ID,CUSTOMER_ID) VALUES ('$SERVICE_TIME',$SERVICE_ID_SELECTED,$CUSTOMER_ID)")
NAME=$($PSQL "select distinct(name) from services inner join appointments using (service_id) where service_id=$SERVICE_ID_SELECTED")
echo -e "\nI have put you down for a$NAME at $SERVICE_TIME, $CUSTOMER_NAME."


 fi


 
}
MAIN_MENU