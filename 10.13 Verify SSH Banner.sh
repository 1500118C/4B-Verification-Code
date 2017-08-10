#!/bin/bash

printf "\e[0m Checking if SSH Banner is correct:  \n"
if grep "^Banner /etc/issue.net" /etc/ssh/sshd_config > /dev/null ; then # Grep "Banner /etc/issue.net" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi
