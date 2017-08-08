#!/bin/bash

printf "Checking if Anacron is enabled \n"
if rpm -qa | grep -q cronie-anacron; then # List enabled softwares and grep "cronie-anacron" to check if it is enabled
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi
