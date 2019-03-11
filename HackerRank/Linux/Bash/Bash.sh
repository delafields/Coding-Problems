# Let's Echo
echo 'Hello'

# Looping and Skipping
for num in {1..99..2}
  do echo $num
done

# A Personalized Echo
read name
echo Welcome $name

# Looping with Numbers
for num in {1..50}
do
  echo $num
done

# The World Of Numbers
read x
read y
expr $x + $y
expr $x - $y
expr $x \* $y
expr $x / $y

# Comparing Numbers
read x
read y

if [ $x -eq $y ]
then
	echo "X is equal to Y"
elif [ $x -gt $y ]
then
	echo "X is greater than Y"
else
	echo "X is less than Y "
fi

# Getting started with conditionals
read letter

if [ $letter == Y ] || [ $letter == y ]; then
  echo "YES"
elif [ $letter == N ] || [ $letter == n ]; then
  echo "NO"
else
  echo ""
fi

# More on conditionals
read X
read Y
read Z

if [[ $X == $Y && $X == $Z ]]; then
    echo 'EQUILATERAL'
elif [[ $X == $Y || $X == $Z || $Y == $Z ]] ; then
    echo 'ISOSCELES'
else
    echo 'SCALENE'
fi

# Arithmetic Operations

# Compute The Average
sum=0
read N

for i in $(seq 1 $N); do
    read number
    sum=$(( $sum + $number ))
done

printf "%.3f\n" `echo "$sum / $N" | bc -l`
