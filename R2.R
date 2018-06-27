ysetwd("/media/abhishek/New Volume/R Code")
#setwd("E:/Abhishek/Personal/R_coding")
getwd()#to load the practice data set
data=mtcars
# to see the column names of data
colnames(data)
rownames(data)
#to know about the variables type and the value they contain for the dataset
str(data)
# to give the data dimensions
dim(data)
#to fetch the first 10 rows 
head(data,10)
#to fetch the last 3 rows
tail(data,3)
#how to fetch the only a specific coulumns 
data[1:10,4]
#fetch the sequqnce of rows
data[,4:6]
#now to fetch the specific rows and specific columns
data[c(4,6,1,31), c(1,11)]
#to show the class of the varaible 
class(data$mpg)
#it shows the value of the complete column
data$disp
#it shows the value which is unique in the varaible
unique(data$gear)
unique(c(data$gear,data$mpg))
#it gives the length of the  unique value in a variable set
length(unique(data$cyl))
length(data$cyl)
#it give the info of the no of  occurence of every element in a data set
table(matrx1)
table(data$hp)
summary(data$hp)
mean(data$hp)
median.default(data$hp,TRUE)
sd(data$hp)
#for two variables
var(data$hp,data$mpg)
write.csv(data,"Mtcars.csv",row.names = T)
write.csv(data,"Mtcar2.csv",row.names = F)
#function for writing in xlsx file 
write.xlsx(data,"Mtcar.xlsx",row.names = F)
#how to create a data frame
df1=data.frame(Gender=c('M','F','M','F'),Age=c(23,24,27,32),Income=c(3,5,12,11))
#How to rename a variable
names(df1)=c("Gen","Age","Income") # this approach was more suited for aming the colums for the firsr time
df1
names(df1)[3]="Salary"
df1
vec1=c('a','b',1:3)
mat1=as.data.frame(vec1)
class(vec1)
class(mat1)
#saubsetting the data frame by using column name
subsetmat1=subset(data,select=c(mpg,hp))
#subsetting The data frame on the basis of condition
subset2=data[which(data$mpg>=22),]
subset2
#how to create one more variable in a data frame using the existing variable
data$new=with(data,exp=log(data$mpg))
# to transpose a  matrix and the dataframe
t(data)
data
#to convert the numeric variable cyl into categorical 
data$cyl=as.factor(data$cyl)
class(data$cyl)
rm(list = ls())
