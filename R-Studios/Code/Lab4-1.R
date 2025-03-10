#Find the Probability of getting two 2's among ten dice
# n=10, x=2, p=1/6
#dbinom(x,size=n,prob=p)
dbinom(2,10,1/6)
#Q2 Find the P(2) by using binomial probability formula
choose(10,2)*(1/6)^2*(5/6)^8
x=0:10
df1=dbinom(x,10,1/6)
df1=round(df1,7)
df1
x=c(0:10)
df1=round(df1,10)
data.frame(x,df1)
plot(0:10,df1, type="b")
plot(0:10,df1, type="o")

# For binomial (n=7,p=1/4) random variable named x.
x=0:50
y=dbinom(x,50,33/100)
y

y=dbinom(0:7,7,1/4)
l=round(y,4)
#iii. Display those probabilities in a table
data.frame(x=c(0:7),l)
#iv. Show the shape of this binomial Distribution
plot(0:7, dbinom(0:7,7,1/4), type="o")

#n=12 p=1/5 
y=dbinom(0:4,12,1/5)
y

sum(dbinom(0:4,12,1/5))# Cumulative distribution
#or alternative
pbinom(4,12,1/5)# Cumulative distribution

#HW 1
#If 10% of the Screws produced by an automatic machine are
#defective, find the probability that out of 20 screws selected
#at random, there are
#(i) Exactly 2 defectives
#(ii) At least 2 defectives
#(iii) Between 1 and 3 defectives (inclusive)
dbinom(2,20,1/10)
choose(20,2)*(1/10)^2*(9/10)^18

pbinom(1,20,1/10,lower.tail =FALSE)
s=sum(dbinom(2:20,20,1/10))
s
sum(dbinom(1:3,20,1/10))
pbinom(3,20,1/10)-dbinom(0,20,1/10)
