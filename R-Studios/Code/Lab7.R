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
zalpha
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
zalpha
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
abs(z)
zalpha=qnorm(1-alpha)
zalpha
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
zalpha
if(abs(z)<abs(zalpha)){print("Hypothesis accepted")}else{print("Hypothesis rejected")}

