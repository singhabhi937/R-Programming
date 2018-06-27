# setting working directory
#setwd("/media/abhishek/New Volume/R Code")
setwd("E:/Abhishek/Personal/R_coding")
#getting working directory
getwd()
#work on Exponential function 
#1st way
c=4^2
#2nd way
d=3**2
#difference between %/% and / 
a=(2+1)%/%3 # no difference as ans is 1
b=(2+1)/3   # no difference as ans is 1
#to work on the vectors
#vector declartation
vec1=c(seq(from=1,to=12,by=2))
#how to give the name to your vector element
names(vec1)=c("first","Second","Third")
vec1
# sum function it gives the sum of all the things in its parenthesis but
#they should only be numeirc also list is not allowed as a parameter
e=sum(vec1)
#to sort the vector here decreasing is false   
sort(vec1,TRUE)
# to call the vector element
vec1[2]
#the following calling like in matrics is not allowed
#vec1[2,]
#vec1[2:]
#to select the vector without any specific element 
vec1[-2]
#to call a list of vector elements
vec1[c(2,4,6)]
# to install packages and extend the base R functionality
install.packages(c('dplyr','plyr','reshape'))
install.packages(c('ggplot2','data.table'))
# built in R fuction to load the csv file in the R
csvfile=read.csv("DATASC1.csv",header = T)
install.packages('xlsx')
# to load the xlsx library
library(xlsx)
#to read the excel file in r
excelobject=read.xlsx("DATASC1.xlsx",SheetIndex=1,header=T)
# to read the tab delimited txt file
txtobj=read.delim("DATASC1.txt")
#to read the ,txt file with "-" seperator
txtobj2=read.table("DATASC2",header = T,sep="-")
rm(list=ls())
#to work on the sum function
sum(2,4)
x=300
b=5
sum(x,b)
#sum('a','b') as a and b are character value and is not defined
# mean function
a=mean(c(2,5,8))
vec1=c(3,4,5)
# names function can be used to for subsetting the vector
names(vec1)=c('a','b','c')
vec3=vec1[c('a',"c")]
# we can compare the vector elements with single variable
vec4=c(3,4,5,6,7)
total=vec4>=5
vec5=vec4[total]
vec5
# how to use the list 
lst1=list('a',5,'c',TRUE)
#lst function would not work  with the list data type
sort(lst1)
#how to create the array
array1=array(c(2:7,rep(seq(from=8,to=11,by=1),time=2)),dim=c(2,6))
array1[1:3]
# How to define the matrix
matrx1=matrix(c(1:10), nrow = 2 ,ncol=5,byrow=TRUE)
# Here by row is false by default 
matrx2=matrix((1:10), nrow = 2 ,ncol=5)
#from the above observation it is cleared that you can directly pass the data 
#to define the matrix by using vector of unequal size
matrx5=matrix(c(vec1,vec3))
#matrx5 above can be defined of the vector of unequal size 
# if nrow and the nsize is not mentioned in the parameter list than it will make 1*1 matrix
matrx3=matrix(c(vec1,vec2))
matrx3
# n*m should be the multiple or factor or equal to the total no of elements 
matrx4=matrix(c(vec1,vec4), nrow =2 ,ncol=8)
# in case of the m*n is a factor of the total no of elements than 
#in case of factor the first n*m elements would be stored in matraix
#in case of total no of emelemts is a multiple what would happen
#you can also name the matrix rows and columns for better understanding of the data
matrx4[2,4]
rownames(matrx4)=c("Abhi","Bhanu")
colnames(matrx4)=c("a",'b','c','d','e','f','g','h')
matrx4
#how to calculate sum of rows in a matrix 
rowSums(matrx4)
colSums(matrx4)
# can rowSums and colSums can be used to calculate the sum of vectors
vec6=c(6,8,9)
rowSums(vec6,vec1) # no it can not be used
#just like we can combine multiple vecots into one we can use the r bind function to 
#combine the matrix
m=matrix(8:9,nrow=1)
n=matrix(4:7,nrow=2)# in r bind the no of columns should match 
rbind(m,n)
#cbind paste the columns  of two or more matrix into one
p=matrix(1,1,nrow=2)
q=matrix(2:4 ,nrow =2)
cbind(p,q)    #in c bind the no of rows in the matrix should matcah
#rbind and c bind should be able to merge two or more vectors into a matrix
matrx5=rbind(vec1,vec6)
matrx5
matrx6=cbind(vec1,vec6)
head(matrx6,1)
#to list all the datasets available in all the packages
data(package = .packages(all.available = TRUE))
#to list the datasets in package datasets
data()
mat=matrix(c(3,3,3,3))
colSums(mat)+rowSums(mat)


