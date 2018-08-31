setwd("E:/Abhishek/Personal/R_coding")
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
#it shows the value which is unique in the varaible
unique(data$gear)
unique(c(data$gear,data$mpg))
#it gives the length of the  unique value in a variable set
length(unique(data$cyl))
length(data$cyl)
#it give the info of the occurence of every element in a data set
matrx1=matrix(c(1,2,1,3))
table(matrx1)
table(data$hp)
summary(data$hp)
mean(data$hp)
median.default(data$hp,TRUE)
median(data$hp,TRUE)
sd(data$hp)
#for two variables
var(data$hp,data$mpg)
write.csv(data,"Mtcars.csv",row.names = T)
write.csv(data,"Mtcar.csv",row.names = F)
#function for writing in xlsx file 
write.xlsx(data,"Mtcar.xlsx",row.names = F)
mat=matrix(1:4, nrow=2)

