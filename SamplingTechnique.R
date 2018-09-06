setwd("/media/abhishek/New Volume1/R Code")
marketing_tra=read.csv("Marketing Campaign Case Study/marketing_tr.csv",header = T,na.strings = c(""," ","NA"))
getwd()
#simple Random Sampling
random=marketing_tra[sample(nrow(marketing_tra), size =400, replace =F),]
#stratified Sampling
#need to import the Sampling Package for this
#install.packages("sampling")
stratas=strata(marketing_tra)
#rm(list=ls())


