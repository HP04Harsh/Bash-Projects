#For loop
#Prints the value for specified number of times
for i in {1..10}
do
 echo "Hello, World! $i"
done 

#while loop
#pints the value until the condition is true
count =1
num=10
while [$count -ne $num]
do 
 echo "Count: $count"
 ((count++))
done

#until loop
#prints the value until the condition is false
count=1
num=10
until [ $count -eq $num ]
do
 echo "Count: $count"
 ((count++))
done

#infinte loop
#Prints the value until the user stops it
while true
do
 echo "This is an infinite loop. Press Ctrl+C to stop it."      
 sleep 2s
done

#for loop with infinite loop
#Prints the value for specified number of times and then continues to print until the user stops it
for (( ; ; ))
do
 echo "Hello, World! $i"    
done