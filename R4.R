#How to find the pariuclar pattern in a string and replace it 
Text="This is India an is the best country of the world or maybe of universe of milkyway"
sub("is","ix",Text)#this will replace only the first occurence of is 
gsub('of', 'off',Text)#this will replace all the  occurence of 'of'
rm(list =ls())
setwd('/media/abhishek/New Volume/R Code')
getwd()
# This module is for working on the R concepts for programming
player1=c(3,6,7,12,45,14)
for(i in player1)
{
  print(i);
  print(i+2)
}

data=mtcars
for(i in 1:nrow(data))
{
  if(data$cyl[i]==4)
{
  data$engineType[i]='singleCylinder'
}
 else if(data$cyl[i]==6)
 {
   data$engineType[i]='doubleCylinder' 
 }
 else
 {
   data$engineType[i]='tripleCylinder' 
 }
 
}

data$cyl
#warnings() to show the warning in executing any fuction in R
#the shorthan for if else block also ifelse is vectorised
data$vslevel=ifelse(data$vs==0 ,'high','low')
#apply family function in R
#in tradiotnal apply fuction 1 applies on to row and  2 on cloumns
#and the return type of apply can be vector,list, data.frame
apply(data[1:5,1:4],1,mean)
apply(data[1:5,1:4],2,mean)
# now how to define a self funccion as an argument in R
#variable defined inside the argument of a function are similar to local variable
m=matrix(data=cbind(rnorm(30,0),rnorm(30,1),rnorm(30,4)),nrow=30)
m  
apply(m,2,function(x){ length(x[x<1])})
#Now there is lapply the return type of lapply is only the list and 
#it applies on complete data set
lapply(m,median)
#Now there is sapply the return type of sapply is  the vector and 
#it applies on complete data set
sapply(m,function(x) {x*x})
#to take the output of lapply in the form of vector
unlist(lapply(m,median))
