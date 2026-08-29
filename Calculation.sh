#!/bin/bash

while true
do
    echo "=========================="
    echo "    INTEGER CALCULATOR"
    echo "=========================="
    echo "1. Addition"
    echo "2. Subtraction"
    echo "3. Multiplication"
    echo "4. Division"
    echo "5. Modulo"
    echo "6. Exit"
    echo "=========================="

    echo "Enter your choice:"
    read choice

    if [ $choice -eq 6 ]
    then
        echo "Exiting..."
        break
    fi

    echo "Enter the first number:"
    read a

    echo "Enter the second number:"
    read b

    case $choice in
        1)
            add=$((a+b))
            echo "Addition = $add"
            ;;

        2)
            sub=$((a-b))
            echo "Subtraction = $sub"
            ;;

        3)
            mul=$((a*b))
            echo "Multiplication = $mul"
            ;;

        4)
            div=$((a/b))
            echo "Division = $div"
            ;;

        5)
            mod=$((a%b))
            echo "Modulo = $mod"
            ;;

        *)
            echo "Invalid choice"
            ;;
    esac

    echo
done
