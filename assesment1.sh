#!/bin/bash
heads=0
tails=0
while [ $heads -lt 20 ] & [ $tails -lt 20 ]
do
	coin=$(( RANDOM%2 ))
	if [ $coin -eq 0 ]
	then
	 ((heads++))
	else
	 ((tails++))
	fi
	if [ $heads -eq 20 ]
	then
	 echo "Heads Win"
	elif [ $tails -eq 20 ]
	then
	 echo "Tails win"
	else
	 echo "Score"
	 echo "Heads= $heads Tails= $tails"
	fi
done
