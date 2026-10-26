# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Lab Work 5: Sequences and Series Generation
# Course: R Programming Lab
# ==============================================================================

#Sequences

1:10
15:5
-1:-10
-10:-1

1.23:10
10.54:2.23

seq(10)
seq(1:10)

x=2
seq(1,x,x/10)

## Index vector

x=c(9,8,7,6)
ind=seq(along=x)
ind

x[ ind[2]]

## Generating sequences of dates

Sys.time()
Sys.Date()

seq(as.Date("2010-01-01"),as.Date("2017-01-01"),by="years")
seq(as.Date("2017-01-01"), by = "days",length=6)
seq(as.Date("2017-01-01"), by = "months",length = 6)

startdate = as.Date("2016-1-1")
enddate = as.Date("2017-1-1")
out = seq(enddate, startdate, by = "-1 month")
out

## Generating sequence of alphabets

letters
letters[1:3]
letters[3:1]

LETTERS
LETTERS[1:3]
LETTERS[3:1]


#Repeats

rep(3.5,times=10)
rep(1:4,2)

x=1:4
rep(x,times=2)
rep(x,each=2)
rep(x,times=2,each=2)
rep(x,4:7)

x = matrix(nrow=2, ncol=2, data=1:4, byrow=T)
rep(x,3)

rep(c("a","b","c"),2)

rep(2,length.out=5)
rep(2,length=5)

#Sorting

y=c(8,5,7,6)
y
sort(y)
sort(y,decreasing=TRUE)

#Ordering

y=c(9,8,5,7,6)
y
order(y)
order(y,decreasing=TRUE)

#MODE

mode(2.345)
mode(c(3,4,5,6,7))
mode("India")
mode(c("India","CANDADA"))
mode(factor(c("India","CANDADA")))
mode(list("India","USA"))
mode(data.frame(x=1:2,y=c("India","USA")))

data.frame("vicky"=1:2,"Sunil"=c("India","USA"))
mode(print)

#Lists

x1 = matrix(nrow=2, ncol=2, data=1:4, byrow=T) 
x2 = matrix(nrow=2, ncol=2, data=5:8, byrow=T) 
x

x1+x2
x1[2,1]="hello"
x1
x1+x2

x1[2,1]=3
matlist=list(x1,x2)

matlist[1]
matlist[2]

z1 = list( c("water", "juice", "lemonade"), rep(1:4, each=2),
          matrix(data=5:8, nrow=2,ncol=2, byrow=T) )
z1

z1[[1]]
z1[1][2]
z1[[1]][2]





