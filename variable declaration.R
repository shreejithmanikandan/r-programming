a=5
c<- 9
names=pavan
names-> "pavan"
names
names<-"pavan"
names
Names_01=1
_name=1
.name=1
.name
$u=1
a1=1
a1
#DATA TYPES
#NUMERIC
num=3
num
class(num) #type of variable
#CHARACTER
char="pav"
class(char)
Char='pav'
class(Char)#BOOLEAN (or) #LOGICAL
log=TRUE
class(log)
#COMPLEX
com=7i
nun=1+8i
nun
com
class(com)
#INTEGER  
int=-5L
int
class(int)
Int=-5
class(Int)

#ARRAY AND MATRICES
    #ONE DIMENSIONAL ARRAY
array1<- array(1:10)
array1
    #TWO DIMENSIONAL ARRAY
array2<- array(1:12, dim = c(3,4,1))
array2

array3<- array(1:15, dim = c(3,5,1))
array3

#MATRIX CREATION
    #MATRIX WITH AGES
male_age= c(27,37,47,57,100)
female_age= c(17,27,37,47,90)
 matrix= matrix (c(male_age,female_age),nrow = 5 )
matrix 
mat= matrix (c(male_age,female_age),nrow = 5,ncol=5 )
mat 

#MATRIX OPERATTIONS 
#MATRIX ADDTION
#DATA FOR MATRICES
class_a<-  matrix(c(25,32,57,45,68,96,78,12,45),nrow=3)
class_b<-  matrix(c(36,98,23,78,89,56,25,12,41),nrow=3)
class_a
class_b

total<- class_a+class_b
print(total)

mul = class_a %*% class_b
print(mul)
