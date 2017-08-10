#!/bin/bash

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