setwd("E:/Abhishek/Personal/R_coding")
setwd("/media/abhishek/New Volume/R Code")
getwd()#to 
# to load the data from a CSV file IMDB_data by skiping the second row 
# Question 1(a)
data=(read.csv("IMDB_data.csv", fileEncoding = 'ISO-8859-1')[-2,])
#------------------------------------------
# Question 1(b).
#Extract the unique genres and its count and store in data frame with index key
#code for getting a vector of gnere and storing it into a data frame 
df_Genere=unique(data$Genre)
dataFrame_Genere=data.frame(df_Genere)
#//////////////////////////////
#getting a vector of values with the number from index 0 to 249   
df_frameIndex=length(unique(data$Genre))
data_frameIndex=data.frame(indexkey=1:df_frameIndex)
#/////////////////////////////////////////

#merging of dataFrame_Genere and data_frame  to form a new 
#data frame which store the gnere and the index values 
data_frame=cbind(dataFrame_Genere,data_frameIndex)  
#-------------------------------------------
# Question 1(c).
#Convert the required data types

data$Plot=as.character(data$Plot)
data$Title=as.character(data$Title)
data$imdbVotes=as.numeric(data$imdbVotes)
data$Poster=as.character(data$Poster)
data$imdbRating=as.numeric(data$imdbRating)
data$Genre=as.character(data$Genre)
data$imdbID=as.character(data$imdbID)
data$Year=as.Date(data$Year)
data$Language=as.character(data$Language)
str(data)

#----------------------------------------------
#1(d)Sort the genre by its name	 
OrderedGenereDataFrame=data[order(data$Genre),'Genre']
#----------------------------------------------
# 1(e)	
#Create new variable whose values should be square of difference between imdbrating and imdbvotes.
data$new=with(data,(data$imdbRating-data$imdbVotes)^2)

#rm(list = ls())






