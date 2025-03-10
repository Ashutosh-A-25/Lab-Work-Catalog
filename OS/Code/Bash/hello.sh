#! /usr/bin/bash
# echo 'Enter three numbers'
# read a b c
# if [ $a -gt $b -a $a -gt $c ]
# then 
# echo "The greatest number is $a"
# elif [ $b -gt $a -a $b -gt $c ]
# then 
# echo "The greatest number is $b"
# elif [ $c -gt $a -a $c -gt $b ]
# then 
# echo "The greatest number is $c"
# else 
# echo 'None'
# fi
# echo "Enter the Number"
# read n
# s=0
# i=1
# while [ $i -le $n ]
# do 
#     s=$((s+i))
#     i=$((i+1))
# done
# echo $s

# Reverse of a number
# echo "Enter a number"
# read n
# c=0
# rev=0
# while [ $n -gt 0 ]
# do
#     c=$((n%10))
#     rev=$((rev*10+c))
#     n=$((n/10))
# done 
# echo $rev

# If number is odd or even
# echo "Enter number"
# read n
# if [ $((n%2)) -eq 0 ]
# then 
#     echo "Even"
# else
#     echo "Odd"
# fi

# Quadratic Roots
echo -e "Enter the Coefficients of the Quadratic Equation \n" 
read a b cal
d=$((b*b-4*a*c))
if [ $d -eq 0 -a $a -ne 0 ]
then 
    r=$((-b/(2*a)))
    echo "It has equal roots i.e $r"
elif [ $d -gt 0 ]
then 
    dis=`echo "scale=4; sqrt($d)" | bc`
    echo $dis
    r1=$((-b+dis/(2*a)))
    r2=$((-b-dis/(2*a)))
    echo "It has two roots that are $r1 & $r2"
fi

