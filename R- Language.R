#HANDLING DATA IN R
#CREATING DATA
employee<- c('Prady','Dulquar','Mania')
salary<- c(23000,25000,30000)
id_num<- c('A001','A002','A003')

#CREATING A DATA FRAME
employee.data= data.frame(employee,salary,id_num)

#VIEWING DATA FRAME
View(employee.data)

#TYPE OF DATA
typeof(employee.data)

#OBJECT OF DATA
class(employee.data)

#BASIC INFO DROM DATA FRAME
nrow(employee.data)
ncol(employee.data)

#SLICING ROWS AND COLUMN
employee.data$employee#column

employee.data[2:3,]#row (first= no of matrix, wanted columns)

#MODIFYING THE DATA 
employee.data[3,'id_num']<- 'A004'
employee.data[1,'employee']<- 'Pavan'
employee.data

#SAVING DATA FRAME
write.csv(employee.data,"Employee Details.csv")

#READING A DATA FRAME
read.csv('Employee Details.csv')
