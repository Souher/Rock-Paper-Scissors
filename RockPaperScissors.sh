#!/bin/bash

#This funtion creates a random choice for the NPC. Also prints out computers choice
function computer
{
	#This will generate a random number between 1 and 3
	NUMBER=$[ ( $RANDOM % 3 )  + 1 ]
	if [[ $NUMBER == 1 ]]; then
		echo "Computer picked Rock"
		COPTION="Rock"
	elif [[ $NUMBER == 2 ]]; then
		echo "Computer picked Paper"
		COPTION="Paper"
	elif [[ $NUMBER == 3 ]]; then
		echo "Computer picked Scissors"
		COPTION="Scissors"
	fi
}

#This function asks for the player to choose their number
function ask
{
	echo "Pick a number 1 = Rock, 2 = Paper, 3 = Scissors"
	read NUMBER
}

#This while loop is for error handling. I used different version of not equals to see if it made a difference
while [[ $NUMBER != 1 && $NUMBER -ne 2 && $NUMBER -ne 3 ]]; do
	ask
done

#This function will print out the choice
function human
{
	if [[ $NUMBER == 1 ]]; then
		echo "You picked Rock"
		HOPTION="Rock"
	elif [[ $NUMBER == 2 ]]; then
		echo "You picked Paper"
		HOPTION="Paper"
	elif [[ $NUMBER == 3 ]]; then
		echo "You picked Scissors"
		HOPTION="Scissors"
	fi
}

#This calling the functions which will print the choices made by the players
human
computer

#This is the logic for the points system
if [[ $HOPTION == "Rock" ]] && [[ $COPTION == "Rock" ]]; then
	echo "Draw"
elif [[ $HOPTION == "Rock" ]] && [[ $COPTION == "Paper" ]]; then
	echo "Computer Wins"
elif [[ $HOPTION == "Rock" ]] && [[ $COPTION == "Scissors" ]]; then
	echo "Human Wins"

elif [[ $HOPTION == "Paper" ]] && [[ $COPTION == "Rock" ]]; then
	echo "Human Wins"
elif [[ $HOPTION == "Paper" ]] && [[ $COPTION == "Paper" ]]; then
	echo "Draw"
elif [[ $HOPTION == "Paper" ]] && [[ $COPTION == "Scissors" ]]; then
	echo "Computer Wins"

elif [[ $HOPTION == "Scissors" ]] && [[ $COPTION == "Rock" ]]; then
	echo "Computer Wins"
elif [[ $HOPTION == "Scissors" ]] && [[ $COPTION == "Paper" ]]; then
	echo "Human Wins"
elif [[ $HOPTION == "Scissors" ]] && [[ $COPTION == "Scissors" ]]; then
	echo "Draw"
fi
