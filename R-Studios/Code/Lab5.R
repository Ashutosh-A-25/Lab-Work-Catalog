datasets::anscombe
dim(anscombe)
attach(anscombe)
x=x1
y=y1
plot(x,y)

regs1<-lm(x~y)
regs1
abline(regs1)
#Predicting x using y
predictionx=regs1$coefficients[2]*y+regs1$coefficients[1]
predictionx

regs1<-lm(y~x)
regs1
abline(regs1)
#Predicting y using x
predictiony=regs1$coefficients[2]*x+regs1$coefficients[1]
predictiony
# Multiple Regression
z=y2
da=data.frame(x,y,z)
regl<-lm(x~y+z,data=da)
regl
lm(formula=x~y+z,data=da)#Alternative
summary(regl)


