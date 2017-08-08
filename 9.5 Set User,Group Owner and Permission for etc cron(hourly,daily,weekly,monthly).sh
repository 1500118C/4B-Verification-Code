#!/bin/bash

printf "\e[0m Checking if /etc/cron.hourly file has the correct permissions \n"
if ls -ld /etc/cron.hourly | grep drwx------ >/dev/null; then # Grep the permissions from ls -l /etc/cron.hourly to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if /etc/cron.daily file has the correct permissions \n"
if ls -ld /etc/cron.daily | grep drwx------ >/dev/null; then # Grep the permissions from ls -ld /etc/cron.daily to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if /etc/cron.weekly file has the correct permissions \n"
if ls -ld /etc/cron.weekly | grep drwx------ >/dev/null; then  # Grep the permissions from ls -ld /etc/cron.weekly to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if /etc/cron.monthly file has the correct permissions \n"
if ls -ld /etc/cron.monthly | grep drwx------ >/dev/null; then # Grep the permissions from ls -ld /etc/cron.monthly to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
