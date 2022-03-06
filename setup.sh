#!/bin/bash

install=$?

echo "Mirando si tienes instalados ciertos elementos necesarios..."
echo " "

#Verificamos si está instalada la suite de aircrack.

ls -l /usr/bin/aircrack-ng &> /dev/null

if [[ $? = 0 ]] ; then
	echo "[*]Suite aircrack --> OK"
else
	apt install aircrack-ng -y 
fi

sleep 2
#Verificamos si está instalado macchanger

ls -l /usr/bin/macchanger &> /dev/null

if [[ $? = 0 ]] ; then
        echo "[*]macchanger --> OK"
else
        apt install macchanger -y
fi

sleep 2
#Verificamos si está instalado MDK3

ls -l /usr/sbin/mdk3 &> /dev/null


if [[ $? = 0 ]] ; then

	echo "[*]mkd3 --> OK"
else
	apt install mdk3 -y
fi

sleep 2
#Verificamos si está instalado MDK4

ls -l /usr/sbin/mdk4 &> /dev/null

if [[ $? = 0 ]] ; then

        echo "[*]mkd4 --> OK"
else
        apt install mdk4 -y
fi


sleep 2
#Verificamos si está instalado tshark

ls -l /usr/bin/tshark &> /dev/null

if [[ $? = 0 ]] ; then
	echo "[*]tshark --> OK"
else
	apt install tshark -y 
fi

sleep 2
#Verificamos si está instalado John|Ripper|

ls -l /usr/bin/john &> /dev/null

if [[ $? = 0 ]] ; then
	echo "[*]John The Ripper --> OK"
else
	apt install john -y 
fi

sleep 2
#Verificamos si está el wordlists instalado.

ls -l /usr/share/wordlists/rockyou.txt* &> /dev/null

if [[ $? = 0 ]] ; then
	echo "[*]Diccionarios --> OK"
else
	apt install wordlists -y
fi

sleep 2
#Verificamos si están las net-tools instaladas.

ls -l /usr/share/doc/net-tools &> /dev/null 

if [[ $? = "0" ]] ; then
	echo "[*]Net-tools --> OK"
else
	apt install net-tools -y
fi

sleep 2
#Verificamos si están instaladas las librerías básicas para networking.

ls -l /usr/share/doc/build-essential &> /dev/null

if [[ $? = "0" ]] ; then
	echo "[*]Build-essential --> OK"
else
	apt install build-essential -y
fi

sleep 2
#Verificamos si están los banners.

ls -l /usr/bin/toilet &> /dev/null

if [[ $? = "0" ]] ; then
        echo "[*]Banner --> OK"
else
        apt install toilet -y
fi

sleep 2
#Verificamos si están los banners.

ls -l /usr/bin/toilet &> /dev/null

if [[ $? = "0" ]] ; then
        echo "[*]Fortune --> OK"
else
        apt install fortune -y
fi

sleep 2
#Verificamos si están los banners.

ls -l /usr/bin/toilet &> /dev/null

if [[ $? = "0" ]] ; then
        echo "[*]Cowsay --> OK"
else
        apt install cowsay -y
fi


#EJECUCIÓN

chmod +x banner.sh
chmod +x wicrack
chmod +x wicrack-gui
chmod +x wicrack-cli

#Finalizamos

sleep 2
echo " "
echo "[+]Completado..."
echo " "
