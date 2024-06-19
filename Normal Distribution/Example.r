"""
AIM: To find the probability that a box with a weight of (i) less than 18 kg is sold
(ii) more than 22 kg is sold (iii) between 18 and 21 kg is sold and also to
determine the 90% quantile q which describes that P(X ≤ q) ≥ 0.9 also to
generate 4 random numbers from a normal distribution N(20, 4) by using R.
"""
# Experiment-III (Normal distribution)
# Problem1: Given mean=20, variance=4, sd=sqrt(4)
#To store the given values by variables
>mean=20
>mean

>var=4
>var

>sd=sqrt(var)
>sd

# (i)To calculate the probability that a box with a weight of less than 18 kg is sold. P(X<18)
>pb1=pnorm(q=18, mean=20, sd=sqrt(var), lower.tail=TRUE,log.p=F)
>pb1

# (i)To calculate the probability that a box with a weight of more than 22 kg is sold. P(X>22)
>pb2=pnorm(q=22, mean=20, sd=sqrt(var), lower.tail=FALSE, log.p=F)
>pb2

# (i)To calculate the probability that a box with a weight of between 18 and 21 kg is sold. P(18<X<21)
>pb3=pnorm(q=21,mean=20,sd=sqrt(var))-pnorm(q=18,mean=20,sd=sqrt(var))
>pb3

>pb_3=sum(dnorm(x=c(19:21),mean=20,sd=sqrt(var)))
>pb_3

#To determine the 90% quantile q which describes that P(X ≤ q) ≥ 0.9
>q=qnorm(p=0.9, mean=20, sd=sqrt(var),lower.tail=T)
>q

#To generate 4 random numbers from a normal distribution N(20, 4)
>RN= rnorm(n=4,mean=20,sd=sqrt(4))
>RN