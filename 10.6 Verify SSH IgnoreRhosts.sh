#!/bin/bash

#10.6 Verify SSH IgnoreRhosts
printf "\e[0m Checking if IgnoreRhosts is enabled:  \n"
if grep "^IgnoreRhosts yes" /etc/ssh/sshd_config > /dev/null; then # Grep "IgnoreRhosts yes" to ensure settings is correct and remove the output with "/dev/null"
        printf "\033[33;32m PASS \n"
else
        printf "\033[33;31m FAIL \n"
fi
