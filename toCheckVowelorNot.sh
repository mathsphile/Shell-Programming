echo "Enter the character"
read char
if [[ "$char" =~ [aeiouAEIOU] ]]
then
	echo "$char is vowel"
else
	echo "$char is not vowel"
fi
