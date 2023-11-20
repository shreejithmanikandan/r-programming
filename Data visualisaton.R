#IMPORTING LIBRARIES
library(ggplot2)
library(dplyr)

#IMPORTING DATASET
expenses<- read.csv("dailyexpenses.csv")

#VIEWING DATASET
View(expenses)
str(expenses)

#DATE TYPE CONVERSION
expenses$Date<- as.Date(expenses$Date,"%d%m%y")
View(expenses)
str(expenses)

#
tot<- expenses[,2:9]
total<- colSums(tot)
detail<-c("food","groceries","medical","fuel","toll","phone","electricity","miscellaneous")


tot_each<-data.frame(detail,total)
View(tot_each)


ggplot(data= tot_each, aes(x= detail,y= total))+geom_bar(stat="identity", fill="maroon")+
labs(x= "items",y= "expenses",title= "comparing expenses")

#DATA FRAME
cm<- expenses[,2:9]
dt<- expenses[,1]
rs<- rowSums (cm)

daily_tot <- data.frame(dt,rs)
View(daily_tot)  

#LINE GRAPH
ggplot(data= daily_tot, aes(x= dt,y= rs))+
geom_line(color="black")
labs(x= "Date",y="expenses",title="Total expenses")

#SCATTER PLOT-data frame
md<- expenses[,3]
de<- expenses[,1]

daily_med <- data.frame(de,md)
View(daily_med)

ggplot(data = daily_med, aes(x= de,y=md))+geom_point(color="black")+ 
  labs(x="expenses",y= "medical", title = "medical expenses")

