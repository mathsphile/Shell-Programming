echo "Enter a number : "
read num
if [ "$num" -lt 2 ]
then
	echo "number is not prime"

fi
flag=1
i=2

# Loop from 2 to the square root of the number
while [ $((i * i)) -le "$num" ]
do
  if [ $((num % i)) -eq 0 ]; then
    flag=0
    break
  fi
  i=$((i + 1))
done
	
if [ "$flag" -eq 0 ] 
then
	echo "This is not prime"
else
	echo "This is prime number"
fi
