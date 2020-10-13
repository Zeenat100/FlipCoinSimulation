heads=1
tails=2
heads_count=0
tails_count=0
final_count=21
echo "Welcome to flip coin simulation"
while [[ $final_count -gt $heads_count && $final_count -gt $tails_count ]]
do
	result=$(( $RANDOM % 2 +1))
	if [[ $result -eq $heads ]]
	then
		heads_count=$(($heads_count + 1 ))
	else
		tails_count=$(($tails_count + 1 ))
	fi
done
echo "Heads count $heads_count"
echo "Tails count $tails_count"
if [ $heads_count -eq $final_count ]
then
	echo "Heads is the winner"
	diff=$(($heads_count - $tails_count))
	echo "Heads win by $diff"
elif [ $tails_count -eq $final_count ]
then
	echo "Tails is the winner"
	diff=$(($tails_count - $heads_count))
        echo "Tails win by $diff"
elif [ $tails_count -eq $heads_count]
then
	echo "It's a tie"
else
	echo "Unpredictable result"
fi

