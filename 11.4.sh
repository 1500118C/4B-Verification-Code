#!/bin/bash

printf "\e[0m Determine the current settings for reusing of older passwords \n "
if grep "remember=5" /etc/pam.d/system-auth >/dev/null; then # Grep "remember=5" from /etc/pam.d/system-auth and remove the output with "/dev/null"
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi