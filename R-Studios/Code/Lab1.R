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


hist(airquality$Month,breaks=20)
hist(airquality$Month,main="Month",xlab='Number',ylab="frequency",col="blue",breaks=5)

plot(airquality$Temp,airquality$Month,col="red",type="l")
summary(airquality$Month)

slices<-c(13,7,6,6,5,4,3,3)
teams<-c("RealMad","Milan","Liverpool","Bayern","Barcelona","Ajax","ManUnited","Inter")

library(plotrix)
pie3D(slices,labels=teams,explode=0.1,main="Champions league Domination")

