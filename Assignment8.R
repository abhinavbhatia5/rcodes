data<-read.csv(file.choose())
data
nrow(data)
dim(data)
head(data,10)
m=mean(data$Wall.Thickness)
m
hist(data$Wall.Thickness)
abline(v=m,col='red')

func<-function(size){
  s<-c()
  n=1000
  for (i in 1:n){
    x=data$Wall.Thickness
    s[i]=mean(sample((x),10,replace=TRUE))
    
  }
  hist(s)
  abline(v=m,col='red')
}

func(10)
func(50)
func(500)
func(9000)

