#!/bin/bash

while :
 do
  clear
  echo "----------------------------------------------"
  echo " * * * * * * * Main Menu * * * * * * * * * * "
  echo "----------------------------------------------"
  echo "[1] Change password"
  echo "[2] See disk space"
  echo "[3] Login to other box using ssh"
  echo "[4] Show all services running"
  echo "[5] Show all prots opened"
  echo "[6] Show all java apps running"
  echo "[7] Facility to kill app"
  echo "[8] Exit/stop"
  echo "----------------------------------------------"
  echo -n "Enter your menu choice [1-5]:"
 read var

case $var in

1) passwd

echo "Press any key to return menu...."
read -n 1;;

2) df -h
echo "Press any key to return menu...."
read -n 1;;

3) echo " Please enter machine's ip address"
   read mach
   ssh $mach
   echo "Press any key to return menu...."
   read -n 1;;

4)service --status-all

  echo "Press any key to return menu...."
  read -n 1;;

5)echo " Open ports on the server: "
   nmap localhost

  echo "Press any key to return menu...."
  read -n 1;;

6) echo " Please enter running app name "
  read app
  ps -aufx|grep $app

 echo "Press any key to return menu...."
 read -n 1;;

7)echo "Please enter app name to kill"
  read proc
  pkill $proc

 echo "Press any key to return menu...."
 read -n 1;;

8)exit 0
;;
*) echo "Opps!!! Please select choice 1,2,3,4,5,6,7 or 8"
       echo "Press a key. . ."
       read -n 1
       ;;
esac
done
