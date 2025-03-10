# Check whether two groups have the same  mean
x<-c(91,87,99,77,88,91)# Using t.test
y<-c(101,110,103,93,99,102)
r=t.test(x,y,alternative="less",var.equal=TRUE)
r
r$p.value
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
*

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
r2
r2$p.value
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



