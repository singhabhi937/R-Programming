#setwd("E:/Abhishek/Personal/R_coding")
setwd("/media/abhishek/New Volume1/R Code")
marketing_tra=read.csv("Marketing Campaign Case Study/marketing_tr.csv",header = T,na.strings = c(""," ","NA"))
getwd()
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

#the following code is used to convert all the cateotical variabble to be 
#represnetaed in numeric way as it it consume the less memory

for(i in 1:ncol(marketing_tra))
{
if(class(marketing_tra[,i])=='factor')
{
marketing_tra[,i]=factor(marketing_tra[,i],labels = 1:length(levels(marketing_tra[,i])))

}

}
# we can also do the same thing using the apply family function 
  

#outlier Analysis 
## Box plot analyis but it will apply only continous numeric value
# so first extract the numeric indexes  from the dataset
numeric_index=sapply(marketing_tra , is.numeric)
numeric_data=marketing_tra[,numeric_index]
cnames=colnames(numeric_data) #they will be used for box plot maps 
library(ggplot2)

 for (i in 1:length(cnames))
 {
   assign(paste0("gn",i), ggplot(aes_string(y = (cnames[i]), x = "responded"), data = subset(marketing_tra))+ 
            stat_boxplot(geom = "errorbar", width = 0.5) +
            geom_boxplot(outlier.colour="red", fill = "grey" ,outlier.shape=18,
                         outlier.size=1, notch=FALSE) +
            theme(legend.position="bottom")+
            labs(y=cnames[i],x="responded")+
            ggtitle(paste("Box plot of responded for",cnames[i])))
 }

#plotting points together

gridExtra::grid.arrange(gn1,gn5,gn2,ncol=3)
gridExtra::grid.arrange(gn6,gn7,ncol=2)
gridExtra::grid.arrange(gn8,gn9,ncol=2)

numeric_index = sapply(marketing_tra,is.numeric) #selecting only numeric

numeric_data = marketing_tra[,numeric_index]

cnames = colnames(numeric_data)

# # #Remove outliers using boxplot method
df = marketing_tra
#marketing_tra = df

val = marketing_tra$previous[marketing_tra$previous %in% boxplot.stats(marketing_tra$previous)$out]
 
marketing_tra = marketing_tra[which(!marketing_tra$previous %in% val),]
a=boxplot.stats(marketing_tra[,i])$out
                                  
# # #loop to remove from all variables
 for(i in cnames)
   {
   print(i)
  val = marketing_tra[,i][marketing_tra[,i] %in% boxplot.stats(marketing_tra[,i])$out]
   print(length(val))
   marketing_tra = marketing_tra[which(!marketing_tra[,i] %in% val),]
 }

# 
# #Replace all outliers with NA and impute
# #create NA on "custAge
# for(i in cnames){
#   val = marketing_tra[,i][marketing_tra[,i] %in% boxplot.stats(marketing_tra[,i])$out]
#   #print(length(val))
#   marketing_tra[,i][marketing_tra[,i] %in% val] = NA
# }
# 
# marketing_tra = knnImputation(marketing_tra, k = 3)

# # # Feature Selection
# Apply the correlaton analysis on the numeric index
library(corrgram)
corrgram(marketing_tra[,numeric_index],order=F,
        upper.panel=panel.pie,text.panel=panel.txt, main="corleation plot") 

#Now we will perform the  chi square test on the categorical variable 
factor_index=sapply(marketing_tra, is.factor)
factor_data=marketing_tra[,factor_index]
#leaving the 11th variable Responded  as it is the output variable

for(i in 1:10)
{
print(names(factor_data[i]))
print(chisq.test(table(factor_data$responded,factor_data[, i]))) 
}  

##feature Scaling 
#Two methods to check for the normality of the variable 
qqnorm(marketing_tra$custAge)
hist(marketing_tra$custAge)
cnames=c("custAge","campaign","previous","cons.conf.idx","cons.price.idx","nr.employed",
         "euribor3m","pmonths","pastEmail")


for(i in cnames)
{
 marketing_tra[,i]=(marketing_tra[,i]-min(marketing_tra[,i]))/(max(marketing_tra[,i])-min(marketing_tra[,i]))
}
  
#rm(list=ls())


