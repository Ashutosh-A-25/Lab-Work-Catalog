# THE LAB 1
a=c(12,23,23)
b=c(12,23,23)
c=a+b
c
c=exp(0)
c
factorial(10)
datasets::airquality
head(airquality)
tail(airquality)
mean(airquality$Temp)
median(airquality$Temp)
sd(airquality$Wind)
var(airquality$Temp)
min(airquality$Temp)
max(airquality$Temp)
mean(airquality$Solar.R,na.rm =T)
max(airquality$Solar.R,na.rm=T)
quantile(airquality$Wind)
quantile(airquality$Solar.R,na.rm=T)
summary(airquality$Ozone)
#Table
sl=c(1:4)
sl
roll=c("20BRS1262","20BEC1222","20BCE1001","20BRS1112")
name=c("Ashutosh","Ayush","Aryan","Danush")
mark=c(98,90,100,91)
table=data.frame(sl,roll,name,mark)
table
summary(table)
r=read.csv("D:/VIT/First-Yr-Winter/Maths Practicals/Health_data.csv")
r
x=mean(r[1:5,2:2])
x
b=read.csv("D:/VIT/First-Yr-Winter/Maths Practicals/Data/Lab1.csv")
b

#LAB2

datasets::airquality
head(airquality)

subset(airquality, airquality$Month=='8')
#factor
factor(airquality$Month, labels=c("May","June","July","August","September"))

hist(airquality$Temp)
hist(airquality$Temp, breaks = 20)
hist(airquality$Temp,main="Temperature _airquality",xlab='temperature',ylab='frequency')
hist(airquality$Temp,main="Temperature",col="red")

x<-airquality$Temp
m<-mean(x)
std<-sd(x)

#hist(airquality$Temp,main="Temperature")
curve(dnorm(x, mean=m, sd=std), col="red", add='TRUE')

par(mfrow=c(2,2))
hist(airquality$Temp)
hist(airquality$Ozone)
hist(airquality$Wind)
hist(airquality$Solar.R)

boxplot(airquality$Temp)
boxplot(airquality)
boxplot(airquality[,1:4])

plot(airquality$Temp, airquality$Ozone) # How do Ozone and temperature measurements relate?
plot(airquality$Temp, airquality$Ozone, col="red",
     pch =16) # pch=11,20
plot(airquality$Temp, airquality$Ozone, type='l') #line plot


slices <- c(10, 12,4, 16, 8)
countries <- c("US", "UK", "Australia", "Germany", "France")
pie(slices, labels = countries, main="Pie Chart of Countries")


slices <- c(10, 12,4, 16, 8)
countries <- c("US", "UK", "Australia", "Germany", "France")
library(plotrix)
pie3D(slices,labels=countries,explode=0.1,main="Pie Chart of Countries ")

#LAB3

sample(1:50,5)
sample(1:6,10,replace=TRUE) # with replacement


dice=as.vector(outer(1:6,1:6,paste)) ## sample space of rolling two dice
dice=as.vector(outer(1:6,1:6)) ## product of face values when rolling two dice
dice

sample(c('H','T'),10,replace=TRUE)

choose(5,2)#Combination

choose(5,2)*factorial(2)#Permutation as there is no direct way to get it
factorial(5)/factorial(5-2)#Another way

choose(10,0:10)# coefficients for (x+y)^10

for (n in 0:4) print(choose(n,0:n))#Pascal's Triangle


library(prob)
tosscoin(4)
tosscoin(2,makespace=TRUE)
rolldie(2)
dice=as.vector(outer(1:6,1:6,paste)) ## sample space of rolling two dice
dice=as.vector(outer(1:6,1:6)) ## product of face values when rolling two dice
dice


#mean 
x=c(0,1,2,3)
f=c(1/8,3/8,3/8,1/8)
mean=sum(x*f)
mean

Ex2=sum((x^2*f))
variance=Ex2-(mean^2)
variance


# LAB4-1


x=c(1,2,3,4,5)
p=c(0.1,0.2,0.1,0.3,0.3)
x
p

pmf=sum(p)
pmf

m=sum(x*p)
m

e2=sum(x^2*p)
e2

v=e2-m^2
v

f=cumsum(p)#Cummulative Frequency
f
plot(x,p,type='h',col='blue',xlab='x value',ylab = 'probability distribution') #type h is histogram
plot(x,f,type='h',col='red',xlab='x value',ylab = 'Cummulative Frequency')
plot(x,f,type='s',col='blue',xlab='x value',ylab = 'Cummulative Frequency') #type s is step graph

#Find the Probability of getting two 2's among ten dice
# n=10, x=2, p=1/6
#dbinom(x,size=n,prob=p)
dbinom(2,10,1/6)
#Q2 Find the P(2) by using binomial probability formula
choose(10,2)*(1/6)^2*(5/6)^8
x=0:10
df1=dbinom(x,10,1/6)
df1
x=c(0:10)
df1=round(df1,4)
data.frame(x,df1)
plot(0:10,df1, type="b")
plot(0:10,df1, type="o")

# For binomial (n=7,p=1/4) random variable named x.
x=0:50
y=dbinom(x,50,33/100)
y

y=dbinom(0:7,7,1/4)
y
l=round(y,4)
l
#iii. Display those probabilities in a table
data.frame(x=c(0:7),l)
#iv. Show the shape of this binomial Distribution
plot(0:7, dbinom(0:7,7,1/4), type="o")

#n=12 p=1/5 
y=dbinom(0:4,12,1/5)
y

sum(dbinom(0:4,12,1/5))
#or alternative
pbinom(4,12,1/5)

#HW 1
#If 10% of the Screws produced by an automatic machine are
#defective, find the probability that out of 20 screws selected
#at random, there are
#(i) Exactly 2 defectives
#(ii) At least 2 defectives
#(iii) Between 1 and 3 defectives (inclusive)
dbinom(2,20,1/10)

pbinom(1,20,1/10,lower.tail =TRUE)

sum(dbinom(1:3,20,1/10))


# Lab 4-2

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

#6. Make a table of the first 11 Poisson probabilities and cumulative probilities when lamda=2 and obtain the output prettier.

#7. Plot the probabilities Put some labels on the axes and give the plot a title

# 1
0:10
seq(0:9)
#2 
k=dpois(0:10,2)
round(k,7)
#3
ppois(5,2,lower.tail=FALSE)
sum(dpois(5:10,2))
#4
sum(dpois(0:10,2))
#5
ppois(6,2,lower.tail=FALSE)
#6
x=c(0:11)
y=dpois(0:11,2)
y=round(y,5)
z=cumsum(dpois(0:11,2))
z=round(z,5)
table=data.frame(x,y,z)
table

#7
plot(0:10,dpois(0:10,2),main="Poison's Distribution",type='h',xlab='Events',ylab="Poison's Distribution")

# Lab 5

datasets::mtcars
data.frame(mtcars)
dim(mtcars)
attach(mtcars)# Now you can directly use the features 
x=drat
y=wt
var(x,y)

#covariance
var(x,y)/sqrt(var(x)*var(y))
cor(x,y)
cor.test(x,y,method='pearson')

plot(x,y)
regs1<-lm(x~y)
regs1
abline(regs1)
regs1$coefficients[1]
regs1$coefficients[2]
pred_x = regs1$coefficients[2]*y+regs1$coefficients[1]
pred_x
#Now from x to y
regs2<-lm(y~x)
regs2
abline(regs2)
pred_y = regs2$coefficients[2]*x+regs1$coefficients[1]
pred_y
z=gear
da=data.frame(x,y,z)
# Multiple Regression
regl<-lm(x~y+z,data=da)
regl
lm(formula=x~y+z,data=da)#Alternative
summary(regl)

# Lab_6

# Normal Distribution
# Standard normal distribution using formula
# y=1/sqrt(2*pi)*exp(-x^(2)/2) when mean=0 and sd=1
x=seq(-4,4,length=200)
y=1/sqrt(2*pi)*exp(-x^2/2)
plot(x,y,type="o",lwd=2,col="red")
plot(x,y,type="b",lwd=2,col="red")
plot(x,y,type="l",lwd=2,col="red")

# dnorm is designed to provide values of the
# probability density function for the normal distribution
# same as above using dnorm
x=seq(-4,4,length=200)
y=dnorm(x,mean=0,sd=1) # Alternative
plot(x,y,type="l",lwd=4,col="orange")

# -10 to 10 in 0.1 steps
# mean=2.5 sd=0.5
# visualize the normal distribution and cdf
x=seq(-10,10,by=0.1)
y1=dnorm(x,mean=2.5,sd=0.5)
plot(x,y1)
y2=pnorm(x,mean=2.5,sd=0.5)

# To create a sequence of 200 numbers with x=-3 to 3 for standard normal pdf with mean 0 and sd=1
x=seq(-3,3,length=200)
y1=dnorm(x)
plot(x,y1,type='l')

x=seq(-3,0,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,0),c(0,y,0),col="red")
pnorm(0,mean= 0 ,sd=1)

# To find the area to the left of 1
# Please note first graph and then comes the 
# area coloration
x=seq(-3,1,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,1),c(0,y,0),col="yellow")
pnorm(0,mean= 0 ,sd=1)

# To find the area to the right of 2
x=seq(2,4,length=100)
y=dnorm(x)
polygon(c(2,x,4),c(0,y,0),col="purple")
pnorm(0)

# Finding the x value given the area (Quantile percentile)
#text(-1,0.1,"0.40") # on x=-1 y=0.2 and 40%)
qnorm(0.40)
x=seq(-3,-0.2533,length=100)
y=dnorm(x,mean=0,sd=1)
polygon(c(-3,x,-0.2533),c(0,y,0),col="blue")


# Lab7

#Suppose the manufacturer claims that the mean lifetime of a light bulb is more
#than 10,000 hours. In a sample of 30 light bulbs, it was found that they only
#last 9,900 hours on average. Assume the population standard deviation is 120 hours.
#At 0.05 significance level, can we reject the claim by the manufacturer?

# So here myu=10000, n=30, mean=9900, sd=120 
xbar=9900
myu=10000
n=30
sd=120
z=(xbar-myu)/(sd/sqrt(n))
abs(z)
alpha=0.05
zalpha=qnorm(1-alpha)
zalpha

if(abs(z)<abs(zalpha)){print("Hypothesis accepted")}else{print("Hypothesis rejected")}

#Suppose the mean weight of King Penguins found in an Antarctic
#colony last year was 15.4 kg. In a sample of 35 penguins same
#time this year in the same colony, the mean penguin weight is 14.6 kg.
#Assume the population standard deviation is 2.5 kg. At .05 significance
#level, can we reject the null hypothesis that the mean penguin weight
# does not differ from last year?
# xbar=14.6 myu=15.4 sd=2.5 n=35 alpha=0.05
xbar=14.6
myu=15.4
sd=2.5
n=35
z=(xbar-myu)/(sd/sqrt(n))
abs(z)
alpha=0.05
zalpha=qnorm(1-alpha/2)
if(abs(z)<abs(zalpha)){print("Hypothesis accepted")}else{print("Hypothesis rejected")}


#The average mark scored by 32 boys is 72 with a S.D of 8,
#while that for 36 girls is 70
#with a S.D. of 6. Test at 1% level of
#significance whether the boys perform better
#than girls

xbar1=72
xbar2=70
n1=32
n2=36
sd1=8
sd2=6
alpha=0.01
z=(xbar1-xbar2)/sqrt((sd1)^2/n1+(sd2)^2/n2)
z
zalpha=qnorm(1-alpha)
if(abs(z)<abs(zalpha)){print("Hypothesis accepted")}else{print("Hypothesis rejected")}

#Suppose the food label on a cookie bag states that there is
#at most 2 grams of saturated fat in a single cookie. In a sample
#of 35 cookies, it is found that the mean amount of saturated fat
#per cookie is 2.1 grams. Assume that the population standard deviation
#is 0.25 grams. At 0.05 significance level, can we reject the claim on food label?
myu=2.1
xbar=2
n=35
sd=0.25
alpha=0.05
z=(xbar-myu)/(sd/sqrt(n))
z
zalpha=qnorm(1-alpha)
abs(zalpha)
if(abs(z)<abs(zalpha)){print("Hypothesis accepted")}else{print("Hypothesis rejected")}

#A Model Examination was conducted to XII Standard students in the subject of Statistics. 
#A District Educational Officer wanted to analyze the Gender-wise performance of the students 
#using the marks secured by randomly selected boys and girls. Sample measures were calculated 
#and the details are presented below:
# Boys n=100  xbar=50 sd=4
# Girls n=150 xbar=51 sd=5
#Test, at 5% level of significance, whether performance of the students differ significantly 
#with respect to their gender.
xbar1=50
xbar2=51
n1=100
n2=150
sd1=4
sd2=5
alpha=0.05
z=(xbar1-xbar2)/sqrt((sd1)^2/n1+(sd2)^2/n2)
abs(z)
zalpha=qnorm(1-(alpha/2))
if(abs(z)<abs(zalpha)){print("Hypothesis accepted")}else{print("Hypothesis rejected")}

# Lab 8

# Check whether two groups have the same  mean
x<-c(91,87,99,77,88,91)# Using t.test
y<-c(101,110,103,93,99,102)
r=t.test(x,y,alternative="less",var.equal=TRUE)
if(r$p.value<0.05){print("Hypothesis rejected")}else{print("Hypothesis accepted")}
# if p<0.05 we reject the null hypothesis decided that mean of x and y are not equal

#F test
# Compare two variances of normally distribution groups
# Determine whether the variances are equal
x<-rnorm(25,mean=0)
y<-rnorm(25,mean=1)
r1=var.test(x,y)
r1
r1$p.value
if(r1$p.value<0.05){print("Hypothesis rejected")}else{print("Hypothesis accepted")}
#Suppose that 10 volunteers have taken an intelligence test;
#here are the results obtained. The average score of the
#entire population is 75 in the same test.
#Is there any significant difference (with a significance level of 95%)
#between the sample and population means, assuming that the variance of
#the population is not known.
#Scores: 65, 78, 88, 55, 48, 95, 66, 57, 79, 81

x=c(65, 78, 88, 55, 48, 95, 66, 57, 79, 81)
xbar=mean(x)
sd=sqrt(var(x))
mu=75
alpha=0.05
n=length(x)
t=abs(xbar-mu)/(sd/sqrt(n-1))
t
ta=qt(1-(alpha/2), n-1)
if(t<ta){print("Hypothesis accepted")}else{print("Hypothesis rejected")}

#Suppose that 10 volunteers have taken an intelligence test;
#here are the results obtained. The average score of the
#entire population is 75 in the same test.
#Is there any significant difference (with a significance level of 95%)
#between the sample and population means, assuming that the variance of
#the population is not known.
#Scores: 65, 78, 88, 55, 48, 95, 66, 57, 79, 81
# Using one sample
x=c(65, 78, 88, 55, 48, 95, 66, 57, 79, 81)
xbar=mean(x)
sd=sqrt(var(x))
mu=75
alpha=0.05
n=length(x)
t=abs(xbar-mu)/(sd/sqrt(n-1))
t
ta=qt(1-(alpha/2), n-1)
if(t<ta){print("hypothesis accepted")}else{print("Hypothesis rejected")}

#problem 4: Comparing two independent sample means,
#taken from two populations with unknown variance.
#The following data shows the heights of individuals
#of two different countries with unknown population
#variances. Is there any significant
#difference b/n the average heights of two groups.
#x1=c(175,168,168,190,156,181,182,175,174,179)
#x2=c(185,169,173,173,188,186,175,174,179,180)

# Use t.test

x1=c(175,168,168,190,156,181,182,175,174,179)
x2=c(185,169,173,173,188,186,175,174,179,180)
r2=t.test(x1,x2,alternative="less",var.equal=TRUE)
if(r2$p.value<0.05){print("Hypothesis rejected")}else{print("Hypothesis accepted")}

#problem 5: Five Measurements of the output of two units
#have given the following results (in kilograms of material per one hour of operation)
#.Assume that both samples have been obtained from normal populations,
#test at 10% significance level if two populations have the same variance.
#A=c(14.1,10.1,14.7,13.7,14.0)
# B=c(14.0,14.5,13.7,12.7,14.1)

A=c(14.1,10.1,14.7,13.7,14.0)
B=c(14.0,14.5,13.7,12.7,14.1)
R=var.test(A,B,conf.level=0.9)
R
R$p.value
if(R$p.value<0.05){print("Hypothesis rejected")}else{print("Hypothesis accepted")}


a<-"a<-0;cat(sub(0,deparse(a),a))";cat(sub(0,deparse(a),a))

