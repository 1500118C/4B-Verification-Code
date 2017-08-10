#!/bin/bash

#10.10 Verify SSH Ciphers
printf "\e[0m Checking if the Approved Cipers is correct:  \n"
if grep "^Ciphers aes128-ctr,aes192-ctr,aes256-ctr" /etc/ssh/sshd_config > /dev/null; then # Grep "Ciphers aes128-ctr,aes192-ctr,aes256-ctr" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi
