#CRD
group1<-c(551,457,450,731,499,632)
group2<-c(595,580,508,583,633,517)
group3<-c(639,615,511,573,648,677)
group4<-c(417,449,517,438,415,555)
group5<-c(563,631,522,613,656,679)
group<-data.frame(cbind(group1,group2,group3,group4,group5))
summary(group)
stgr<-stack(group)
crd<-aov(values~ind,data=stgr)
summary(crd)
boxplot(group)

# Question 2
#Two way anova
m1<-c(42.5,39.3,39.6,39.9,42.9,43.6)
m2<-c(39.8,40.1,40.5,42.3,42.5,43.1)
m3<-c(40.2,40.5,41.3,43.4,44.9,45.1)
m4<-c(41.3,42.2,43.5,44.2,45.9,42.3)
data<-data.frame(m1,m2,m3,m4)
data=t(data)
#data<-read.table(file.choose(),header=TRUE)
time=c(t(as.matrix(data)))
f=c("Oper1","Oper2","Oper3","Oper4","Oper5","Oper6")
g=c("M1","M2","M3","M4")
k=ncol(data)
n=nrow(data)
Operators=gl(k,1,n*k,factor(f))  #Generate Factor Levels
Machines=gl(n,k,n*k,factor(g))
anova=aov(time ~ Machines + Operators)
summary(anova)
interaction.plot(Operators,Machines,time)

x <-c("a", "b", "c", "c", "d", "a")
x[1:4]
x[0:4]
1:4