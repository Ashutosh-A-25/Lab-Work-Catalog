#NAME - ASHUTOSH ARDU
#REGNO - 20BRS1262
h=c(62,64,65,69,70,71,72,74)
w=c(126,125,139,145,165,152,180,208)
cor(h,w)
cor.test(h,w)

regs1<-lm(h~w)
regs1
#Predicting x using y
predictionx=regs1$coefficients[2]*(255)+regs1$coefficients[1]
predictionx

a=c(20, 25, 30,31,38,50,61,76)
z=a
regl<-lm(w~h+a,data=da)
predx=regl$coefficients[3]*(28)+regl$coefficients[2]*(60)+regl$coefficients[1]
predx

cor(h,w)
cor(a,h)
# THE HEIGHT AND WEIGHT ARE SIMILARLY RELATED AS AGE AND HEIGHT MEANING 
#EVEN AGE AND WEIGHT ARE SIMILARLY RELATED
cor(a,w)
# AS YOU CAN SEE ALL THE CORRELATION VALUES ARE CLOSE



x=seq(0,100,length=35)
mean(x)

matrix(1:100, byrow = FALSE, ncol = 10)

x=dbinom(0:10,10,1/5)
plot(x,type='o')

library(prob)
tosscoin(3)

pbinom(3,14,0.05,lower.tail = TRUE)
pbinom(2,14,0.05,lower.tail = FALSE)


x=c(18,	12	,18	,12,	19,	21,	20,	16,	10,	14)
y=c(14,	22,	20,	19,	20,	16,	18,	14,	19,	18)
skewness(x)
kurtosis(x)
skewness(y)
kurtosis(y)

