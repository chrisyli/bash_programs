# List of files then count the number in current directory
count_file=$(ls | wc -l)

get_user_input() {
	echo "How many files are in the current directory?"
	read guess
}

get_user_input

while [[ $guess -ne $count_file ]]
do
if [[ $guess -gt $count_file ]]
then
  echo "Your guess $guess is too high. Try again"
  get_user_input
else 
  echo "Your guess $guess is too low. Try again"
  get_user_input
fi

done

echo "Congratulations! You guessed the correct number!"