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

