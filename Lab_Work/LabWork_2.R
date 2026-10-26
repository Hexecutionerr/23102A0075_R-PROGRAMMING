# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Lab Work 2: Vector Arithmetic & Calculator Operations
# Course: R Programming Lab
# ==============================================================================

#-------------Week 3------------

#Addition
c(2,3,5,7)+ c(-2,-3,-5,8)

#R as a calculator
2^3
2**3

#power with scalar
c(2,3,5,7)^2
c(2,3,5,7)^c(2,3)
c(2,3,5)^c(2,3) #warning come along with it also

#Integer division with scalar
2%/%3
c(2,3,5,7)%/%2
c(2,3,5,7)%/%c(2,3)

#Modulo division
3%%2
c(2,3,5,7)%%2
c(2,3,5,7)%%c(2,3)

#Maximum
max(1.2,3.4,-7.8)
max(c(1,2,3),c(4,5,6))

#Minimum
min(1.2,3.4,-7.8)
min(c(1,2,3),c(4,5,6))

#Mean
mean(2,3,4)
mean(c(1,2,3))

#abs
abs(-4)
abs(c(-1,-2,-3,4,5))

#sqrt
sqrt(4)
sqrt(c(4,25,36))

#sum and prod
sum(c(2,3,4,5))
sum(c(2,3,4,5),c(6,10))

prod(c(2,3,4,5))
prod(c(2,3,4,5),c(6,10))

#round
round(1.5)

#log
log(10)
exp(1)
log(exp(1))

#log10
log10(10)
log10(c(10,100,1000))

#Matrix
x=matrix(nrow=2,ncol=2,data=c(1,2,3,4))
x
x[2,2]
x=matrix(nrow=2,ncol=2,data=c(1,2,3,4),byrow=TRUE)

#properties of matrix
dim(x)
nrow(x)
ncol(x)

mode(x)
attributes(x)

help(matrix)


#----------Week 4-------------

#Matrix operations

#Rename
x=matrix(nrow=2,ncol=2,data=c(1:4))
rownames(x)=c("r1","r2")
colnames(x)=c("c1","c2")
x
y=matrix(nrow=2,ncol=2,data=2)
y

#Diagonal matrix
d=diag(1,nrow=3,ncol=3)
d

#Transpose
x=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
xt=t(x)
xt

rowSums(x)
colSums(x)

rowMeans(x)
colMeans(x)

#Access to rows,column or submatices
x[3,]
x[,2]
x[3:4,1:2]

#Addition of matrix
x
x+5

#Subtraction
x-5

#Multiplication
5*x

#Division
x/2

#Addition and subtraction of matrix
a=matrix(nrow=4,ncol=2,data=1:8,byrow=T)
b=matrix(nrow=4,ncol=2,data=9:16,byrow=T)

a
b
a+b
a-b

#Multiplication
c=matrix(nrow=2,ncol=4,data=9:16,byrow=T)
a%*%c

#crosspord
t(a)%*%a
crossprod(a)

#concatenating matrices
rbind(a,b)
cbind(a,b)

#Inverse of matrix
invmat=matrix(nrow=2,ncol=2,data=1:4)
invmat
solve(invmat)

#Eigen values and vectors
eigen(invmat)

#Logical Operators
x=8
(x<10) || (x<2)

x=1:6
(x>2) & (x<5)

xor(5,1)
isTRUE(1<2)
isFALSE(5<8)
