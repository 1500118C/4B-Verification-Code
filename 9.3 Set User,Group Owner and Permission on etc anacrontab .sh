#!/bin/bash

printf "\e[0m Checking if /etc/anacrontab file has the correct permissions \n"
if ls -l /etc/anacrontab | grep -e -rw------- >/dev/null; then # Grep the permissions from ls -l /etc/anacrontab to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
