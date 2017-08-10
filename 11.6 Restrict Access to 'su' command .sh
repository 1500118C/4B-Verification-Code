#!/bin/bash

#11.6 Restrict Access to 'su'
printf "\e[0m \n Restrict Access to the su command \n "

if cat /etc/pam.d/su | grep "^auth		required	pam_wheel.so use_uid" > /dev/null; then # Grep "auth		required	pam_wheel.so use_uid" from /etc/pam.d/su and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
printf "\e[0m Users that are allowed to issue su command: \n "
echo -en "\033[33;31m" > /dev/null
cat /etc/group | grep wheel | cut -d : -f 4 #Grep "wheel" from /etc/group and cut out the 4th field 