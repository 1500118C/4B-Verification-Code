#!/bin/bash

printf "\e[0m Checking if the SSH protocol is correct:  \n"
if grep "^Protocol 2" /etc/ssh/sshd_config > /dev/null; then # Grep "Protocol 2" to ensure settings is correct and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi