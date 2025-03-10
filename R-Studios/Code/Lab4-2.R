#P(x=5) with lambda=7
p5=dpois(x=5,lambda=7)
p5
round(p5,3)

#p(0)+p(1)+...+p(5) lam=7
p5=sum(dpois(x=0:5,lambda = 7))
ppois(5,7)# alternative p(X<=5)
p5

#p(X>5)
ppois(5,7,lower.tail=FALSE)
#alternative p(X<=5)
ppois(5,7,lower.tail=TRUE)# lower.tail's default value is TRUE
# in poison's distribution lambda is mean as well as  variance
# lambda=np

n=100
x.val=0:100
p.val=dpois(x.val,4)# here lambda=4
m=sum(x.val*p.val)
m

variance= sum(((x.val)^2)*p.val) - sum(x.val*p.val)^2
variance

# If there are twelve cars crossing a bridge per minute on average, 
#find the probability of having seventeen or more cars crossing the bridge in a 
#particular minute.
p=ppois(16,12,lower.tail=FALSE)
p

#Poisson distribution with parameter 2

#1. How to obtain a sequence from 0 to 10

#2. Calculate P(0),P(1),...,P(10) when lambda =2 and Make the output prettier

#3. Find P(X <= 6)

#4. Sum all probabilities

#5. Find P(X>6)

#6. Make a table of the first 11 Poisson probabilities and cumulative probabilities when lamda=2 and obtain the output prettier.

#7. Plot the probabilities Put some labels on the axes and give the plot a title

# 1
0:10
seq(0:9)
#2 
P=dpois(0:10,2)
P=round(k,6)
data.frame(P)
#3
ppois(5,2,lower.tail=FALSE)
sum(dpois(6:10,2))
#4
sum(dpois(0:10,2))
ppois(10,2)
#5
ppois(6,2,lower.tail=FALSE)
sum(dpois(7:10,2))
#6
P=dpois(0:11,2)
P=round(P,5)
cumulative=cumsum(dpois(0:11,2))
cumulative=round(cumulative,5)
table=data.frame(P,cumulative)
table

#7
plot(0:10,dpois(0:10,2),main="Poison's Distribution",type='h',xlab='Events',ylab="Poison's Distribution")

plot(0:11,cumulative,main="Cumulative Probabilites",type='s',xlab='X values',ylab="Cumulative Probabilites")     


datasets::cars
head(cars)
cars
