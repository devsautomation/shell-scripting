#!/bin/bash

#While Loop
i=10
while [ $i -gt 0 ];do
 echo Iteration = $i
i=$(($i-1))
done


#For Loop

for fruit in apple banana orange kiwi ;do
  echo $fruit
   done
