"""
Aim: To Calculate the probability that (i) less than 4 clients will get satisfactory
accommodation (ii) exactly 4 clients will get satisfactory accommodation (iii) at
least 4 clients will get satisfactory accommodation (iv) at most 4 clients will get
satisfactory accommodation (v) at least 4 but not more than 6 clients will get
satisfactory accommodation (vi) more than 4 clients will get satisfactory
accommodation (vii) between 1 to 6 clients will get satisfactory accommodation
by using R.
"""
# Experiment 1: Binomial Distribution
#Problem 1: Given p=75%, n=6
# To store the given values by variables.
n=6
n
p=75/100
p
q=1-p
q
# (i)To calculate the probability that less than 4 clients will get satisfactory accommodation. i.e., P(X<4) in B.D

PB1=pbinom(q=3,size=n,prob=p,lower.tail=TRUE,log.p=F)
PB1
# PB1=0.16943359375

# (ii)To calculate the probability that exactly 4 clients will get satisfactory accommodation. i.e., P(X=4) in B.D
PB2=dbinom(x=4,size=n,prob=p,log=F)
PB2
# PB2=0.296630859375

# (iii)To calculate the probability that at least 4 clients will get satisfactory accommodation. i.e., P(X>=4)=P(X>3) in B.D
PB3=pbinom(q=3,size=n,prob=p,lower.tail=FALSE,log.p=F)
PB3
# PB3=0.83056640625

# (iv)To calculate the probability that at most 4 clients will get satisfactory accommodation. i.e., P(X<=4) in B.D
PB4=pbinom(q=4,size=n,prob=p,lower.tail=TRUE,log,p=F)
PB4
# PB4=0.466064453125

# (v)To calculate the probability that at least 4 but not more than 6 clients will get satisfactory accommodation. i.e., P(4<=X<=6) in B.D
PB5=sum(dbinom(x=c(4:6),size=n,prob=p,log=F)
PB5
# PB5=0.8305664

PB_5=pbinom(q=6,size=n,prob=p,lower.tail=TRUE,log,p=F) - pbinom(q=3,size=n,prob=p,log.p=F)
PB_5
# PB_5=0.8305664

# (vi)To calculate the probability that more than 4 clients will get satisfactory accommodation. i.e., P(X>4) in B.D

PB6=pbinom(q=4,size=n,prob=p,lower.tail=FALSE,log.p=F)
PB6
# PB6=0.533935546875

# (vii)To calculate the probability that between 1 to 6 clients will get satisfactory accommodation. i.e., P(1<X<6) in B.D
PB7=sum(dbinom(x=c(2:5),size=n,prob=p,log=F))
PB7
# PB7= 0.8173828

PB_7=pbinom(q=5,size=n,prob=p,lower.tail=TRUE,log.p=F) - pbinom(q=1,size=n,prob=p,lower.tail=TRUE,log.p=F)
PB_7
# PB_7= 0.8173828

#(viii)To calculate the value of x if P(X≤x)≥0.46 in B.D
x=qbinom(p=0.46,size=6,prob=0.75,lower.tail=TRUE,log.p=F)
x
# x=4

# (ix)To generate random numbers n=6 from B.D(75,0.75)
RN=rbinom(n=6,size=75,prob=0.75)
RN
"""
Conclusions: From the given, we have
The probability that (i) less than 4 clients will get satisfactory accommodation is
0.16943 (ii) exactly 4 clients will get satisfactory accommodation is 0.2966
(iii) at least 4 clients will get satisfactory accommodation is 0.8306 (iv) at most 4
clients will get satisfactory accommodation is (v) at least 4 but not more than 6
clients will get satisfactory accommodation is (vi) more than 4 clients will get
satisfactory accommodation is (vii) between 1 to 6 clients will get satisfactory
accommodation is 0.533935546875
"""
