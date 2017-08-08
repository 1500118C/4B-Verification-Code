#!/bin/bash

printf "\e[0m Checking if ClientAliveInterval is correct:  \n"
if grep "^ClientAliveInterval 300" /etc/ssh/sshd_config > /dev/null; then # Grep "ClientAliveInterval 300" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi

printf "\e[0m Checking if ClientAliveCountMax is correct:  \n"
if grep "^ClientAliveCountMax 0" /etc/ssh/sshd_config > /dev/null; then # Grep "ClientAliveCountMax 0" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi
