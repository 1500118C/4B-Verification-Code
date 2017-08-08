#!/bin/bash

printf "\e[0m Checking if the SSH loglevel is correct:  \n"
if grep "^LogLevel INFO" /etc/ssh/sshd_config > /dev/null; then # Grep "LogLevel INFO" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi