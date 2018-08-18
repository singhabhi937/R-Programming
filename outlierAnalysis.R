setwd("E:/Abhishek/Personal/R_coding")
marketing_tra=read.csv("marketing_tr.csv")

# use the code earlier used for missing value analysis 

#to make the data frame using all the coloumns to impute on the missing value percentage
missing_value=data.frame(apply(marketing_tra,2,function(x){sum(is.na(x))}))
missing_value$columns=rownames(missing_value)
rownames(missing_value)=NULL
colnames(missing_value)[1]=c('Percentage')
#length(marketing_tra$custAge)= nrow(marketing_tra)
missing_value$Percentage=(missing_value$Percentage/nrow(marketing_tra))*100
#ordering the rows in descending order
missing_value=missing_value[order(-missing_value$Percentage),]
#rearranging the colunmns 
missing_value=missing_value[,c(2,1)]
#now after proper arranging write it in a csv
write.csv(missing_value, "missing_perc.csv", row.names=F)
#we will be using the knn method as we have already 
#seen thatit is the best method for this particualar data set
library(DMwR)
marketing_tra=knnImputation(marketing_tra,5)
#KNN
# marketing_tra[144,1]=43.00

#outlier Analysis

#the following code is used to convert all the categorical variable in to 
#numeric  as it it consume the less memory

for(i in 1:ncol(marketing_tra))
{
if(class(marketing_tra[,i])=='factor')
{
marketing_tra[,i]=factor(marketing_tra[,i],labels = 1:length(levels(marketing_tra[,i])))

}

}
# we can also do the same thing using the apply family function 
# but i don't know how to apply the function for this purpose  

#outlier Analysis 
## Box plot analyis but it will apply only continous numeric value
# so first extract the numeric indexes  from the dataset
numeric_index=sapply(marketing_tra , is.numeric)
numeric_data=marketing_tra[,numeric_index]
cnames=colnames(numeric_data) #they will be used for box plot maps 

for(i in 1:length(cnames))
{
  assign
}
#rm(list=ls())
