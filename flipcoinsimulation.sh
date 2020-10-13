heads=1
tails=2
echo "Welcome to flip coin simulation"
result=$(( $RANDOM % 2 +1))
echo $result
if [[ $result -eq $heads ]]
then
	echo "Heads is the winner"
else
	echo "Tails is the winner"
fi
