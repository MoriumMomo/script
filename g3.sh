# !/bin/sh
#student Name: Morium Mostafa Momo
#student ID: 10492778



echo $'\n**** WELCOME TO GUESSING GAME ****'
echo "Please enter your guess: "
read guess_age

# generate a random number between 20 and 70

(( age = RANDOM % 50 + 20 ))

while [[ $guess_age -ne $age ]]  # continue until the guessed age is not equal to the age
do
	if [[ $guess_age -gt $age ]]  # check wheather the guessed age is greater than  the age
	then
		echo "The guess is too high!"
	else 
		echo "The guess is too low!"
	fi
	echo
	echo "Guess a new age: "
	read guess_age
done

echo "The guess is correct!"
echo $'**** THE END ****\n'

# end of the script