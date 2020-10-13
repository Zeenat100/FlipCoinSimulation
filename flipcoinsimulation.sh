heads=1
tails=2
heads_count=0
tails_count=0
echo "Welcome to flip coin simulation"
echo "Let flip the coin 50 times"
for (( i=1 ; i <= 50 ; i++ ))
do
	result=$(( $RANDOM % 2 +1))
	if [[ $result -eq $heads ]]
	then
		heads_count=$(($heads_count + 1 ))
	else
		tails_count=$(($tails_count + 1 ))
	fi
done
echo "$heads_count times head won"
echo "$tails_count times tail won"
