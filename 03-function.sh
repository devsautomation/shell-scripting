#!/bin/bash

#declare Function

test()
{
  echo This is my test funct
  echo value of a = ${a}
  b=200
}

#call func in Main Prog
a=100
test

echo value of b = ${b}