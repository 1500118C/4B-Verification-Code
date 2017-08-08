#!/bin/bash

printf "\e[0m Checking if password-hashing algorithm is set to SHA-512 \n "
if authconfig --test | grep hashing | grep sha512 >/dev/null; then
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi



printf "\e[0m Determine the current settings in /etc/pam.d/systemauth \n "
if grep pam_pwquality.so /etc/pam.d/system-auth >/dev/null; then # Grep "pam_pwquality.so" to ensure settings is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi



printf "\e[0m Settings in /etc/security/pwquality.conf \n "

printf "\e[0m Checking minlen \n"
if cat /etc/security/pwquality.conf | grep "^minlen = 14" > /dev/null; then # Grep "minlen = 14" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking dcredit \n"
if cat /etc/security/pwquality.conf | grep "^dcredit = -1" >/dev/null; then # Grep "dcredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking ucredit \n"
if cat /etc/security/pwquality.conf | grep "^ucredit = -1" >/dev/null; then # Grep "ucredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking ocredit \n"
if cat /etc/security/pwquality.conf | grep "ocredit = -1" >/dev/null; then # Grep "ocredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking lcredit \n"
if cat /etc/security/pwquality.conf | grep "lcredit = -1" >/dev/null; then # Grep "lcredit = -1" from /etc/security/pwquality.conf and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi


printf "\e[0m Determine the current settings in userID lockout \n "
printf "\e[0m Password-auth \n"
if grep pam_faillock /etc/pam.d/password-auth > /dev/null; then # Grep "pam_faillock" from /etc/pam.d/password-auth and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m System-auth \n"
if grep pam_faillock /etc/pam.d/system-auth > /dev/null; then # Grep "pam_faillock" from /etc/pam.d/system-auth and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Determine the current settings for reusing of older passwords \n "
if grep "remember=5" /etc/pam.d/system-auth >/dev/null; then # Grep "remember=5" from /etc/pam.d/system-auth and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi


printf "\e[0m Determine if restriction of login to system console is configured correctly \n "
if ls -ld /etc/securetty| cut -d " " -f 5 | grep 0 > /dev/null; then
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
	


printf "\e[0m \n Restrict Access to the su command \n "

if cat /etc/pam.d/su | grep "^auth		required	pam_wheel.so use_uid" > /dev/null; then # Grep "auth		required	pam_wheel.so use_uid" from /etc/pam.d/su and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
printf "\e[0m Users that are allowed to issue su command: \n "
echo -en "\033[33;31m" > /dev/null
cat /etc/group | grep wheel | cut -d : -f 4 #Grep "wheel" from /etc/group and cut out the 4th field 
