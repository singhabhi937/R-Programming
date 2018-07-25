setwd("/media/abhishek/New Volume/R Code")
getwd()
marketing_tra=read.csv("/media/abhishek/New Volume/R Code/Marketing Campaign Case Study/marketing_tr.csv", header = TRUE, na.strings =c(" ","" ,NA))

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
#now we will see which method is best suited for imputing the missing value so we will manually delete 
# the one value and see which methods calculate the approximate value
#marketing_tra[144,1] value to be deleted which is currentl equal to 58
marketing_tra[144,1] =NA
#mean method 
#marketing_tra$custAge[is.na(marketing_tra$custAge)]=mean(marketing_tra$custAge,na.rm = T)
#mean=40.006

#marketing_tra$custAge[is.na(marketing_tra$custAge)]=median(marketing_tra$custAge,na.rm = T)
#median=38
library(DMwR)
marketing_tra=knnImputation(marketing_tra,5)
#KNN
# marketing_tra[144,1]=43.00
#rm(list=ls())