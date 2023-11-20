#CONDITIONAL STATEMENT
#IF - STATEMENT
x<-8
if (x>0)
{
  print("positive number")
}

y= -6
if (y>0)
{
  print("positive number")
}

#IF...ELSE STATEMENT 
a<-9
if(a%2)
{
  print("divisible")
} else 
  { 
    print("not divisible")
  }

#ELSEIF STATEMENT
c<-0
if (c>0)
{
  print("greather than 0")
}else if (c<0)
{
  print("lesser than 0")
}else
{
  print("zero")
}

D<-8
if (D>0)
{
  print("positive")
}else if (D<0)
{
  print("negative")
}else
{
  print("zero")
}


#LOOPS
#FOR LOOP
x= c(-8,9,11,45)
for (i in x)
{
  print(i)
}

#NESTED LOOP
for (i in 1:3)
{
  for (j in 1:i)
  {
    print(i*j)
  }
}

#WHILE LOOP 
i=0
count=0
while(count<=100)
{
  print(i*i)
  i=i+1
  count= count+1
}

#FUNCTIONS
#FUNCTONS OF A SQUARING NUMBER
number=function(x)
{
  a=x^2
  print(a)
}  
number(9)

OHMs_law=function(i,r)
{
  b=i*r
  print(b)
}  
OHMs_law(5,100)
s