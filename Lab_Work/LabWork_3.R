# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Lab Work 3: Missing Data Handling (NA, is.na)
# Course: R Programming Lab
# ==============================================================================

#Missing Data

x=NA
is.na(x)
x=c(11,NA,13,NA)
is.na(x)

mean(x)
mean(x,na.rm=TRUE) #remove NA than mean

#which
which(is.na(x)) #position on NA

#sum
sum(is.na(x)) #how many missing values

#complete cases
complete.cases(x) #missing values are flag false

#omit - drop missing values
y=na.omit(x)
y

#Control structures

#if
x=5
if(x>4) {x*3}
if(x>3) print("the value is more than 3")

#else
a=3;b=5;c=2

if(a>b){
  if(a>c){
    print(paste(a," is the greatest"))
  }else {
    print(paste(c,"is the greatest"))
  }
}else{
  if(b>c){
    print(paste(b," is the greatest"))
  }else{
    print(paste(c," is the greatest"))
  }
}

#ifesle in built ( like ternery operator)
x=5
ifelse(x<6,x^2,x+1)

#functions and loops

#switch
switch(2,"apple","banana","mango")
switch("sunil","vicky"=100,"sohan"=60,"sunil"=50)

#which
x=c(10,15,8,14,6,12)
which(x==14)
which(x!=12)
which(x>10)

x=matrix(nrow=3,ncol=3,data=1:9)
which.min(x) #work in case of matrix
which.max(x)
