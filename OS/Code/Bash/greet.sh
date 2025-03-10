#Factorial
# echo "Enter the number for factorial" 
# read n
# s=1
# for ((i=1;i<=n;++i))
# do
#     s=$((s*i))
# done
# echo "$s"

# Fibonacci
# echo -e "Fibonacci Numbers\nEnter the number of terms"
# read n
# if [ $n -eq 1 ]
# then echo "0"
# else
# a=0
# b=1
# c=0
# for ((i=1;i<=n;++i))
# do
#     echo -e "$a \c"
#     c=$((a+b))
#     a=$b
#     b=$c
# done
# fi

# Calci
# echo "Enter numbers"
# read a b
# echo "Enter operation"
# read cal
# d=0
# if [ "$cal" == '+' ]
# then 
#     d=$((a + b))
# elif [ "$cal" == "-" ]
# then 
#     d=$((a - b))
# elif [ "$cal" == "*" ]
# then 
#     d=$((a * b))
# elif [ "$cal" == "/" ]
# then 
#     d=$((a / b))
# else 
#     echo "Wrong operation"
# fi
# echo $d

# Largest Digit of a Number
# echo "Enter Number"
# read n
# out=0
# while [ $n  -gt 0 ]
# do
#     b=$((n%10))
#     if [ $b -gt $out ]
#     then 
#         out=$b
#     fi
#     n=$((n/10))
# done
# echo $out


#Palindrome 
# echo "Enter String"
# read word
# rev=$(echo $word | rev)
# echo $rev
# if [ $word == $rev ]
# then
#     echo "Yes"
# else
#     echo "No"
# fi

#Quadratic Equation
echo Enter the coefficient of x^2:
read a
echo Enter the coefficient of x:
read b
echo Enter the constant term:
read c
f=`echo "-($b)" |bc`
p=`expr 2 \* $a`
if [ $a -ne 0 ]
then
    d=`echo \( \( $b \* $b \) - \( 4 \* $a \* $c \) \) | bc`    
    if [ $d -lt 0 ]
    then
        x=`echo "-($d)" | bc`
        s=`echo "scale=2; sqrt ( $x )" | bc`
        echo The first root is:
        echo "($f + $s i) / $p"
        echo The second root is:
        echo "($f - $s i) / $p"
        
    elif [ $d -eq 0 ]
    then
        res=`expr $f / $p`
        echo The root is: $res
    else
        s=`echo "scale=2; sqrt( $d )" | bc`
        res1=`echo "scale=2; ( $f + $s) / ( $p )"|bc`
        res2=`echo "scale=2; ( $f - $s) / ( $p )"|bc`
        echo The first root is: $res1
        echo The second root is: $res2
    fi
else
    echo Coefficient of x^2 can not be 0.
fi