#!bin/bash/
echo "we are at the menudriven file"
while true
do
echo "1.Show permissions of file/directory"
echo "2.Show number of files and directory"
echo "3.Show last modification date and time"
echo "4.Exit"
read -p "enter the choice: " choice
case "$choice" in
1)
    read -p "Enter the file or directory name: " name
    if [ -e "$name" ]
    then
    ls -ld "$name" | cut -c1-c10
    else
    echo "file not existed"
    fi
    ;;
2)
    file=$(find . -maxdepth 1 -type f | wc -l)
    directory=$(find . -maxdepth 1 -type d | wc -l)
    directory=$((directory-1))
    