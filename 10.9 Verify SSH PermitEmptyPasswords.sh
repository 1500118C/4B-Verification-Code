#!/bin/bash

printf "\e[0m Checking if PermitEmptyPasswords is disabled:  \n"
if grep "^PermitEmptyPasswords no" /etc/ssh/sshd_config > /dev/null; then # Grep "PermitEmptyPasswords no" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi
