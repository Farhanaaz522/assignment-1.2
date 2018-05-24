#Assignment 1.2

#1. What should be the output of the following Script?
#Answer 1
v = c( 2,5.5,6)
t =c(8, 3, 4)
print(v%/%t)
#answer
0 1 1


#Question 2.You have 25 excel files with names as xx_1.xlsx, xx_2.xlsx,……..xx_25.xlsx in a dir. 
#Write a program to extract the contents of each excel sheet and make it one df. 

#Answer: 
Setwd(“c:path of the folder”)
File.list=list.files(pattern=’*.xlsx’)
Df.list=lapply(file.list, read_excel)
Df1=rbindlist(df.list,idcol=”id”)
View(df1)


#Question 3. If the above 25 files were csv files, what would be your script to read?
#Answer: 
Setwd(“c:path of the folder”)
File.list<-list.files(pattern=’*.csv’)
Df.list<-lapply(file.list, read.csv)
Df1<-rbindlist(df.list,idcol=”id”)
View(df1)


