#!/bin/bash
DATAFILE="pesonal.dat"
while true
do
    echo "1. Enter personal data"
    echo "2. Enter password"
    echo "3. Exit"
    read -p "enter the coice: " choice
    case "$choice" in
1)

    read -p "Enter your name: " name
    read -p "Enter your age: " age
    read -p "Enter your gmail: " gmail
    read -s -p "Enter your password: " password
    echo

    echo "password:$password" > $DATAFILE
    echo "name: $name" >> $DATAFILE
    echo "age: $age" >> $DATAFILE
    echo "gmail: $gmail" >> $DATAFILE
    echo "Data saved successfully"
    ;;
2)
    if [ ! -f "$DATAFILE" ]
    then
    echo "data not found"
    continue
    fi
    read -s -p "Enter your password: " password
    echo 
    stored_password=$(grep "password:" $DATAFILE | cut -d':' -f2,7)
    # stored_password=$(head -n 1 $DATAFILE | cut -d':' -f2)
    if [ "$password" = "$stored_password" ]
    then
    echo "personal details: "
    tail -n +2 "$DATAFILE"
    else
    echo "Password not matched"
    fi
    ;;
3)
echo "exiting"
exit 0
;;
*)
echo "Invalid choice"
;;
esac
echo
done
