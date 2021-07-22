#!/bin/bash

#declare Function

test()
{
  echo This is my test funct
  echo value of a = ${a}
  b=200
  echo first argument in the function $1
}

#call func in Main Prog
a=100
test ABC #calling funct with arg in line 10
echo value of b = ${b}
#the below is only accessible while running from terminal and pass value ex-: bash 03-function.sh abc
echo first argument in the min prog $1