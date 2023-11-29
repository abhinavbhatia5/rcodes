# Assignment 7

#q1
n<-100
df<-n-1
sample<- rt(n,df)
hist(sample)

#q2
df<- c(2,10,25)
sample1<- rchisq(n,df[1])
sample2<- rchisq(n,df[2])  
sample3<- rchisq(n,df[3])
sample1
rchisq(n,df)

#q3
x<- seq(-6,6,length=100)
df<- c(1,4,10,30)
d1<- dt(x,df[1])
d2<- dt(x,df[2])
d3<- dt(x,df[3])
d4<- dt(x,df[4])

plot(x,d4,col="red",type='l')

color<- c("orange","black","blue")
for(i in 1:3){
  lines(x,dt(x,df[i]),col= color[i])
}
# q4
# (i)

df=c(10,20)
df(0.95,df[1],df[2])

#(ii)
pf(1.5,df[1],df[2])
# 1-pf(1.5,df1=v1,df2=v2)
x=1-pf(1.5,df[1],df[2])
x+df(1.5,df[1],df[2])

#(iii)
q<- c(0.25,0.5,0.75,0.999)
for(a in q){
  print(qf(a,v1,v2))
}
#(iv)
n<-1000
v1<-10
v2<-20
sample<- rf(n,df1=v1,df2=v2)
hist(sample)
