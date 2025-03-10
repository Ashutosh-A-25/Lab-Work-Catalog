empid=c(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15)
age=c(30,37,45,32,50,60,35,32,34,43,32,30,43,50,60)
sex=c(0,1,0,1,1,1,0,0,1,0,0,1,1,0,0)
status=c(1,1,2,2,1,1,1,2,2,1,2,1,2,1,2)
table=data.frame(empid,age,sex,status)
table

table$sex=factor(table$sex,labels=c("male","female"))
table$status=factor(table$status,labels=c("staff","faculty"))
table
summary(table)

plot(table$empid, table$age, type='l',xlab="Employee Id",ylab ="Age")

library(plyr)#Used to get the count/frequency of a particular column in a data frame
y=count(table,"sex")
y
slices<-y$freq
category<-c("male","female")
library(plotrix)
pie3D(slices,labels=category,explode=0.1,main="Employees")

x=count(table,"status")
x
slice<-x$freq
tag<-c("Staff","Faculty")
barplot(slice,names.arg =c("Staff","Faculty"),xlab ="Category",ylab="Frequency",col="darkred")


boxplot(table$age~table$status,xlab="Staff and Faculty",ylab="Frequency",col="darkred")
#empinfo$sex=factor(empinfo$sex,labels=c("male","female"))
#empinfo$status=factor(empinfo$status,labels=c("staff","faculty"))


