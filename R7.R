#to plot the scatter plot 
x=c(seq(1,12,.1))
y=sin(x)
plot(x,y)
matrix(1:5,4,3,byrow = T)
#matrix is nothing but the two dimensional array 
a=matrix(1:12,3,4)
a[,c(2,3)]
#create a matrix a which have all values equal to 1 and haS 9 rows and 9 columns
a=matrix(1,9,9)
a
a[3,2]=0
a
#contour Will draw a 3d Graph for the x y and z axis
contour(a)
persp(a,xlab = "X", ylab = "Y",zlab = "Z",shade = 2)
data=volcano
data
contour(volcano)
#persp is a function which is 
persp(volcano,xlab = "X", ylab = "Y",zlab = "Z",shade = 1.4) 
# Map to draw the heat map 
image(volcano)
