"""
1.The probability of an item produced by a certain machine will be defective is
0.05. If the produced items are sent to the market in packets of 20, find the
number of packets containing (i) at least 2 defective items (ii) exactly 2 defective
items (iii) at most 2 defective items (iv) less than 2 defective items (v) more than
2 defective items (vi) at least 2 but not more than 4 defective items (vii) less
than 10 and more than 2 defective items in a consignment of 1000 packets ,
suppose we want to determine the 60% quantile q which describes that P(X ≤ q)
≥ 0.6 and also to generate 5 random numbers from a Poisson distribution P(4)
by using R. 
"""
#Experiment-II (Poisson distribution)
#Problem-1: Given p=0.05,n=size=20,N=1000
#to store the given values by variables
>p=0.05
>p
>n=20
>20
>N=1000
>N

#to calculate lambda (λ) by λ=np in P.D.
>lambda=n*p
>lambda

#(i) to calculate probability that at least 2 defective items in a packets P(X≥2).
>pb1=ppois(q=1,lambda,lower.tail=F,log.p=F)
>pb1=0.2642411

#to calculate expected no.of packets containing at least 2 defective items
>EF1=N*pb1
>EF1=264

#(ii) to calculate probability that exactly 2 defective items in a packets P(X=2)
>pb2=dpois(x=2,lambda,log=F)
>pb2=0.1839397

#to calculate expected no.of packets containing exactly 2 defective items
>EF2=N*pb2
>EF2=184

#(iii) to calculate probability that at most 2 defective items in a packets P(X≤2)
>pb3=ppois(q=2,lambda,lower.tail=T,log.p=F)
>pb3=0.9196986

#to calculate expected no.of packets containing at most 2 defective items
>EF3=N*pb3
>EF3=920

#(iv) to calculate probability that less than 2 defective items in a packets P(X<2)
>pb4=ppois(q=1,lambda,lower.tail=T,log.p=F)
>pb4=0.7357589

#to calculate expected no.of packets containing less than 2 defective items
>EF4=N*pb4
>EF4

#(v) to calculate probability that more than 2 defective items in a packets P(X>2)
> pb5=ppois(q=2,lambda,lower.tail=F,log.p=F)
>pb5=0.0803014

#to calculate expected no.of packets containing more than 2 defective items
>EF5=N*pb5
>EF5

#(vi) to calculate probability that at least 2 but not more than 4 defective itemsin a packets P(2≤X≤4)
 >pb6=sum(dpois(x=c(2:4),lambda,log=F))
>pb6=0.2605813

#to calculate expected no.of packets containing at least 2 but not more than 4 defective items
>EF6=N*pb6
>EF6

#(vii) to calculate probability that less than 10 and more than 2 defective items in a packets P(2<X<10)
>pb7=sum(dpois(x=c(3:10),lambda,log=F))
>pb7=0.0803014

#to calculate expected no.of packets containing less than 10 and more than 2
defective items
>EF7=N*pb7
>EF7

#to determine the 60% quantile q which describes that P(X ≤ q) ≥ 0.6
>x=qpois(p=0.6, lambda=4, lower.tail= TRUE)
>x

# to generate 5 random numbers from a Poisson distribution P(4).
>rn= rpois(n=5, lambda=4)
>rn