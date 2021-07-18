#!/bin/bash

a=10
b=20
echo $a
echo {$b}

#Substitution
NO_OF_USERS= $(who | wc-l)