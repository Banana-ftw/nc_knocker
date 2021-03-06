#!/bin/bash
echo " ==================================================================== "
echo "|   _______         https://github.com/Banana-ftw/                   | "
echo "|  |  __   |                                                         | "
echo "|  | |  |  |  ______   ___      __   ______   ___      __  ______    | "
echo "|  | |__| /  |  __  | |    \   |  | |  __  | |    \   |  ||  __  |   | "
echo "|  |  __  \  | |__| | |  |\ \  |  | | |__| | |  |\ \  |  || |__| |   | "
echo "|  | |  |  | |  __  | |  | \ \ |  | |  __  | |  | \ \ |  ||  __  |   | "
echo "|  | |__|  | | |  | | |  |  \ \|  | | |  | | |  |  \ \|  || |  | |   | "
echo "|  |_______| |_|  |_| |__|   \ ___| |_|  |_| |__|   \ ___||_|  |_|   | "
echo "|                                                                    | "                                                                
echo "|                  _________    _         _      _                   | "
echo "|                 |  ____  |   | |       | |    | |                  | "
echo "|                 | |    |_| __| |__     | |    | |                  | "
echo "|               __| |__     |__   __|    | |_/\_| |                  | "
echo "|              |__   __|       | |    _  |   __   |                  | "
echo "|                 | |          | |___| | |  /  \  |                  | "
echo "|                 |_|          |_______| |_/    \_|                  | "
echo "|                                                                    | "
echo " ====================================================================  "
echo " "
echo " "
echo "[i] Info: A Script That Uses netcat to find open ports."
echo " "
sleep 2.5s
echo "[U] Usage: Modify list.txt to a path/file of your choosing."
echo " "
sleep 2.5s
echo "[E] Example: /root/Desktop/target.txt will replace list.txt"
echo " "
sleep 2.5s
echo "[i] Info: Outputs will be created automatically in the name of the IP.txt"
echo " "
sleep 2.5s
echo "[E] Example: 192.168.88.74.txt 192.168.88.75.txt or available in the list.txt"
echo " "
sleep 2.5s
echo "[W] WARNING!! Exit the Script Now if you have forgotten to modify list.txt"
echo " "
sleep 5s
echo "[GETTING READY] The Script Will Start in 5 Seconds"
sleep 5s

for ip in $(cat list.txt); do				#Modify list.txt
for i in $(seq 1 65535); do
nc -nv -z $ip $i |& tee -a $ip.txt;
done
done
