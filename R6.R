vignette("dplyr")
a=14%/%3  
a=13/3
lst=ls()
a=array(c(1:4,8:12),dim = list(2,4))
a[2,]
data=mtcars
data[2,4:6]

data=mtcars
fix(data)
edit(data)
min(a)
summary(a)
x=rbind(c(rnorm(100,2,1),rnorm(100,3,2),rnorm(100,2,3)))
dim(x)
view(a)
fix(a)
rm(list=ls())

str(data)
str(c(1,2,3,5,6,34,121,2,12,1223,43,56))
x=c(1:10)
x
x[x>7&x<10]
#these are the methods for the object sys
Sys.Date()
Sys.time()
Sys.timezone()
sum(1:3,NaN,NA ,na.rm = FALSE)
rm(list=ls())
#in R we having methods and functions as well 
#some function are applied on a type of varible
b=c("ABHI"  ,"-", "Shek")
substr(b,3,6) #Both start and end index is inclusive
split(b,"-")
tolower(k)
grep("bh","Abhishek")

