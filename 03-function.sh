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
test ABC
echo value of b = ${b}
echo first argument in the min prog $1