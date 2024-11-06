echo "Enter a number :"
read num
digit=${#num}
sum=0
temp=$num
if [ $num -gt 0 ]
then
	while [ $temp -gt 0 ] 
        do
          rem=$((temp%10))
          sum=$((sum+rem**digit))
          temp=$((temp/10))
  done
fi
if [ $num -eq $sum ]
then
        echo "Armstrong"
else
        echo "Not armstrong"
fi



