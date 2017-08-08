#!/bin/bash

printf "\e[0m Checking if at jobs are restricted \n"
if stat -L -c "%a %u %g" /etc/at.allow | egrep ".00 0 0" >/dev/null; then #Issing this command with an output shows that the system is configured correctly
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi