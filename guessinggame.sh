numfiles=(*)
nfiles=${#numfiles[@]}
userguess=0

function checknumber {
	if [[ $1 -lt $2 ]]
	then
	echo "You have entered a lower number"
	elif [[ $1 -gt $2 ]]
	then
	echo "You have entered a higher number"
	fi
}

while [ $userguess -ne $nfiles]
do
echo "Enter you guess for the number of files!"
read userguess

$(checknumber $userguess $nfiles)

done

echo "You got the right answer!"
