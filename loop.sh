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

#Case in Shell
FRUIT="kiwi"
case "$FRUIT" in
   "apple") echo "Apple pie is quite tasty."
   ;;
   "banana") echo "I like banana nut bread."
   ;;
   "kiwi") echo "New Zealand is famous for kiwi."
   ;;
  *) echo "No such categ"
   ;;
esac
