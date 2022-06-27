#!/bin/bash

echo -e "\e[1;31m [INFO] Create Folder \e[0m"
mkdir m3u8

echo -e "\e[1;31m [INFO] Downloading Eleven 1 \e[0m"
Eleven1="http://glaseetvplus.epizy.com/php/live/eleven1"$AUTH
wget -O Eleven1.m3u8 --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" $Eleven1
cp 'Eleven1.m3u8' 'm3u8/Eleven1.m3u8'
rm 'Eleven1.m3u8'

echo -e "\e[1;31m [INFO] Downloading Eleven 2 \e[0m"
Eleven2="http://glaseetvplus.epizy.com/php/live/eleven2"$AUTH
wget -O Eleven2.m3u8 --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" $Eleven2
cp 'Eleven2.m3u8' 'm3u8/Eleven2.m3u8'
rm 'Eleven2.m3u8'

echo -e "\e[1;31m [INFO] Downloading Eleven 3 \e[0m"
Eleven3="http://glaseetvplus.epizy.com/php/live/eleven3"$AUTH
wget -O Eleven3.m3u8 --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" $Eleven3
cp 'Eleven3.m3u8' 'm3u8/Eleven3.m3u8'
rm 'Eleven3.m3u8'

echo -e "\e[1;31m [INFO] Downloading Eleven 4 \e[0m"
Eleven4="http://glaseetvplus.epizy.com/php/live/eleven4"$AUTH
wget -O Eleven4.m3u8 --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" $Eleven4
cp 'Eleven4.m3u8' 'm3u8/Eleven4.m3u8'
rm 'Eleven4.m3u8'

echo -e "\e[1;31m [INFO] Downloading Eleven 5 \e[0m"
Eleven5="http://glaseetvplus.epizy.com/php/live/eleven5"$AUTH
wget -O Eleven5.m3u8 --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" $Eleven5
cp 'Eleven5.m3u8' 'm3u8/Eleven5.m3u8'
rm 'Eleven5.m3u8'

echo -e "\e[1;31m [INFO] Downloading Eleven 6 \e[0m"
Eleven6="http://glaseetvplus.epizy.com/php/live/eleven6"$AUTH
wget -O Eleven6.m3u8 --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/94.0.4606.61 Safari/537.36 Edg/94.0.992.31" $Eleven6
cp 'Eleven6.m3u8' 'm3u8/Eleven6.m3u8'
rm 'Eleven6.m3u8'

echo -e "\e[1;31m [INFO] Generating Date & Time file in UTC+08 \e[0m"
echo "`env TZ=UTC-08 date`" > "Date & Time UTC +08.txt"

echo -e "\e[1;31m [INFO] Done \e[0m"
