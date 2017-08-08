#!/bin/bash

printf "\e[0m Checking if password-hashing algorithm is set to SHA-512 \n "
if authconfig --test | grep hashing | grep sha512 >/dev/null; then
	printf "\033[33;32m PASS \n"
else
	printf "\033[33;31m FAIL \n"
fi