read -p "Enter the choice 1 for addition 2 for Subtraction 3 for multiplication 4 for division " choice
read -p " Enter first number" num1
read -p "Enetr Second number" num2
case $choice in
	1)
		result=$(($num1+$num2))
		echo "The addition is $result"
		;;
	2)
	         result=$(($num1-$num2))
		 echo "The subtraction is $result"
		 ;;
	3)
	         result=$(($num1*$num2)) 
		 echo "The multiplication is $result"
		 ;;
	4)
	         if [ $num2 -eq 0 ]
		 then
			 echo "Undefined"
		else
			result=$(($num1/$num2))
			echo "The result is $result"
		fi
		;;
	*)
	 	echo "You have entered wrong choice"
		;;
esac

