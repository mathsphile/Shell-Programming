echo "Enter first number"
read a
echo "Enter second number"
read b
if [ "$a" -gt "$b" ]: then
	echo "$a is larger"
else
	echo "$b is larger"
fi

