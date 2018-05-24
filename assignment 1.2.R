#Assignment 1.2

#1. What should be the output of the following Script?
#Answer 1
v = c( 2,5.5,6)
t =c(8, 3, 4)
print(v%/%t)
#answer
0 1 1
#2. You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,........xx_25.xlsx 
#   in a dir.
#   Write a program to extract the contents of each excel sheet and make it 
#   one df.

#Answer 2
setwd("C:\\Users\\mudassar\\Desktop\\farha")
library('readxl')
for (i in 1:25) 
  {
  a=paste("xx_",i,sep="")
  a=paste(a,".xlsx",sep ="")
  df= read_xlsx(a)
  b=rbind(b,df)
 
}


#3. If the above 25 files were csv files, what would be your script to read?

#Answer 3

#use for loop
for (i in 1:25)
  {
  name=paste("xx_",i,sep="")
  name=paste(name,".csv",sep ="")
  df= read.csv(name)
  b=rbind(b,df) 
}

