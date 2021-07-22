#!/bin/bash

a=10
b=20
DATE="27/04/19"
echo $a
echo {$b}

#Substitution

DATE=$(date +%f)
echo todays date is $DATE