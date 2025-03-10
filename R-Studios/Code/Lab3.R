sample(1:100,20)

x<-c(1,2,3,4,5,6)# Sample space of throwing a dice
sample(x,5,replace=TRUE)

product=as.vector(outer(1:6,1:6,paste))
product=as.vector(outer(1:6,1:6))
product

choose(10,2)# 10C2

choose(5,2)*factorial(2) # 5P2
factorial(5)/factorial(5-2) # 5P2

choose(10,0:10)#All the terms
choose(10,7:9)# 8th to 10th terms

for (n in 0:6) print(choose(n,0:n))

library(prob)
tosscoin(3)

rolldie(4)

x<-c(13,18,20,24,27)
p<-c(0.22,0.25,0.20,0.17,0.16)
m=sum(x*p)
m
expectation=sum(x^2*p)
expectation
variance=expectation-(m^2)
variance
standdeviation=sqrt(variance)
standdeviation

