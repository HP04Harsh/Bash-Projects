echo "Enter the number of num1" 
read num1
echo "Enter the number of num2" 
read num2

echo "Enter the operator (+, -, *, /):"
read operator

case $operator in
    +)
        result=$((num1 + num2))
        echo "Result: $result"
        ;;
    -)
        result=$((num1 - num2))
        echo "Result: $result"
        ;;
    *)
        result = $((num1 * num2))
        echo "Result: $result"
        ;;

    /) 
        if [ $num2 -ne 0 ]; then
            result=$((num1 / num2))
            echo "Result: $result"
        else
            echo "Error: Division by zero is not allowed."
        fi
        ;;
esac