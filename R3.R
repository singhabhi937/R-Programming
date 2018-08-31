#sometimw whwn readaiang data from the the flat files 
#categorical data is converted to numerical variable so 
#we may need to convert them 
data=mtcars
str(data)
data$cyl=as.factor(data$cyl)
data$vs=as.factor(data$vs)
#how to use the for loop in R 
for(i in c(2,8,11))
{data[,i]=as.factor(data[,i])
  
}
data$mpg
#how to subset the data 
#Various way but we will use subset 
subsetData=subset(data, select = c(2,4))
#selecting columns with condtion 
conditiondata=data[which(data$mpg==21.4),1:3]
conditiondata
#creating a new varraible from the existing 
data$logmpg=with(data,log(mpg))
log(data$mpg)

#convert numeric to categorical 
data[data$mpg>21,3]='k'
data$mpgcat[data$mpg>=10&data$mpg<=16]="low"
data$mpgcat[data$mpg>16&data$mpg<=20]='Medium'
data$mpgcat[data$mpg>20]='High'

#converting categoical to numerical variable
#it is used to find out the level from a  data factor
length(levels(data$cyl))
voice=c(rep('Poor',30),rep('medium',30),rep('rich',40))
voice_factor=factor(voice,label=(1:length(levels(factor(voice)))))
voice_factor
class(voice_factor)
voice_factor=as.numeric(voice_factor) 
#order function work only for the numeric value 
#order function return the indices of the vectors elements so we can pass the 
#order function into the data
data=data[order(data$mpg, -data$cyl),]
data=data[order(data$mpg ),]
#facotor of voice(vector) would print the levels of the vector
#without any quotaion mark
length(voice)
factor(voice)
#it will return the length as 100 as it has yet to be the factor and levels have not been defined
#will suggest the lenghth 
length(factor(voice))
length(levels(factor(voice)))
#when you create the factor with the factor function R automatically creates
#the factor which you can reanme if you want for example
#the vector voice has three levels which we are going to rename from medium 
#rich to 1,2,and 3
q=factor(voice)
#This will not work levels(factor(voice))=c('a','b','c') use 
levels(q)=c('a','b','c')
#you can use comparison operator for the comparing the value similar to numeric 
k='a'<'b'
#but the levels of factor are not comparable
#summary function for factor can be used to describe the no of occurences
summary(q)
#summary function is not useful for chRCTER VECTOR
W=c('a','d','a','b')
summary(W)
#you can subset the fector for like we do the in vector but it will still show the levels
q[1]
#but the character comparison is invalid for the factor elemets
q[18]<q[34]
#the default level of a factor is unordered and factor of a vector is unordered so it basically
#represent the nominal vector so how  to define the factor of the ordered categoicaal variable
#if you want to have an ordered vector in that case you need to have a ordered  argument 
#also the factor decide its own level on the basis of alphabets so you have to pass the level 
vec_1=c('a','b','a','c','z','x','b')
a=factor(vec_1,ordered=TRUE,levels =c('a','c','b','x','z'))     
b=factor(vec_1,ordered=TRUE) 
b
a
vec_1[1]>vec_1[2]
#Now comparison can be made 
a[1]>a[2]
rm(list=ls())
#how to merge the two vectors 
# mergin with by condion as the only extra parameter is  similar to inner join 
df1=data.frame(customerid =c(1:6),Category=c(rep('special' ,3),rep('Normal',3)))
df2=data.frame(customerid =c(1:3),State=c(rep('Jaipur' ,2),rep('Pune',1)))
df_merge=merge(df1,df2,by='customerid')

#Left Join
df_left=merge(df1,df2,by='customerid',all.x=TRUE) #vlookup
#right Join
df_right=merge(df1,df2,by='customerid',all.Y=TRUE) 
#cross join
df_cross=merge(df1,df2, by=NULL,all=T)

#to perform the aggregate operation 
rm(list=ls())
aggregate(data,by=list(data$cyl,data$vs),mean)
data$vs
k=data[which(data$vs>=0&data$cyl==6),]
grep(6,data$cyl)
#How to drop a variable form the vector 
data$mpg=NULL
#Sometimes you do not require the column names so you can actually combine it with the data
data=cbind(rownames(data),data)
rownames(data)=NULL
class(colnames(data[1]))
colnames(data)[1]='carNames'

         