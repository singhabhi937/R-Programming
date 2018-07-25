#A texxt file of Barack Obama’s tweets is loaded from RFunction.com and put into a character vector. 
#The grep function is used to check which tweets include Romney’s name, and then we print those out.
#Notice the warning, which in this instance specifies that some unusual characters were included in the tweets.
URL="http://rfunction.com/code/1202/BarackObamaTweets.txt"
Tweets=read.delim(URL)
Tweets <- as.character(Tweets[,1]) #to create a character vector without using bind function 
#as.charcter Returns the vector of characters w
#these=grep('Romney', Tweets$V1 ,ignore.case = TRUE)



these1=grep("[Rr]omney",Tweets,)



these=grep('Romney', Tweets,ignore.case = TRUE)
length(these)
Tweets[these]
Tweets[these1]

