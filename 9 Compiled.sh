#!/bin/bash

#9 Compiled Verification
printf "Checking if Anacron is enabled \n"
if rpm -qa | grep -q cronie-anacron; then # List enabled softwares and grep "cronie-anacron" to check if it is enabled
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if Cron is enabled \n"
if systemctl is-enabled crond | grep enabled >/dev/null; then #Use systemctl to check if cron is enabled
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if /etc/anacrontab file has the correct permissions \n"
if ls -l /etc/anacrontab | grep -e -rw------- >/dev/null; then # Grep the permissions from ls -l /etc/anacrontab to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if /etc/crontab file has the correct permissions \n"
if ls -ld /etc/crontab | grep -e -rw------- >/dev/null; then  # Grep the permissions from ls -ld /etc/crontab to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

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

printf "\e[0m Checking if /etc/cron.d directory has the correct permissions \n"
if ls -ld /etc/cron.d | grep drwx------ >/dev/null; then # Grep the permissions from ls -ld /etc/cron.d to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if at jobs are restricted \n"
if stat -L -c "%a %u %g" /etc/at.allow | egrep ".00 0 0" >/dev/null; then #Issing this command with an output shows that the system is configured correctly
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if cron is restricted to Authorized Users \n"
if ls -l /etc/cron.allow | grep -e -rw------- >/dev/null; then # Grep the permissions from ls -l /etc/cron.allow to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if at is restricted to Authorized Users \n"
if ls -l /etc/at.allow | grep -e -rw------- >/dev/null; then # Grep the permissions from ls -l /etc/at.allow to ensure permissions is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
