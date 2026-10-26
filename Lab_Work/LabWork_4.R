# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Lab Work 4: Control Structures and Loops (for, while, if-else)
# Course: R Programming Lab
# ==============================================================================

# Control structures in R

#Loops
# 1.for Loop

for( i in 1:5){
  print(i^2)
}

x= c(2,4,6,8,10,12)
excount=function(x){
  count=0
  for(xval in x){
    if(xval/2>3){
      count=count+1
    }
  }
  print(count)
}

excount(x)

#nested loop

child = c("child1","child2","child3")
sweet = c("sweet1","sweet2","sweet3")

for ( x in child){
  for( y in sweet){
    print(paste(x,y))
  }
}

#break

drink = c("cofferr","lemonade","tea","juice")
for(x in drink){
  if(x=="tea"){
    break
  }
  print(x)
}

#next

drink = c("cofee","lemonade","tea","juice")
for(x in drink){
  if(x=="lemonade"){
    next
  }
  print(x)
}

#while loop

i=1
while(i<10){
  print(i^2)
  i=i+2
}

sumfunction=function(){
  sum=0
  number=as.integer(readline(prompt="Please select any number less than 25 : "))
  
  while(number<=25){
    sum=sum+number
    number=number+1
  }
  print(paste("Ther sum of numbers received from while loop : ",sum))
}

sumfunction()

#repeat

i=1
repeat{
  print(i^2)
  i=i+2
  if(i>10){
    break
  }
}


#Functions

abc=function(x){
  x^2
}

abc(3)

abc=function(x,y){
  x^2+y^2
}

abc(3,4)

abc=function(x){
  sin(x)^2+cos(x)^2+x
}
abc(9)

abc=function(){
  for(i in 1:3){
    print(i^3)
  }
}
abc()

#Sequences

help(seq)

seq(from=2,to=4)
seq(from=4,to=2)
seq(from=-4,to=4)
seq(from=10,to=20,by=2)
seq(to=10,length=10)
seq(from=10,length=10,by=0.1)
seq(from=10,length=10,by=-.2)