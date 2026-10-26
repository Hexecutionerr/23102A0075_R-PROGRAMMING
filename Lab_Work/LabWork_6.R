# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Lab Work 6: List Creation, Merging & Manipulations
# Course: R Programming Lab
# ==============================================================================

# Merging List

list1=list(1,2,3)
list2=list("water","juice","lemonade")

list12=c(list1,list2)
list12

#List to Vector

unlist(list2)
unlist(list1)
mode(list1)
mode(unlist(list1))

#Appending List

append(list1,100)
append(list2,"coffee")
append(list1,100,after=2)
append(list2,"coffee",after=2)

#Removing from list

list1[-2]
list2[-1]

#Extracting from list
list1=list(1,2,3,4,5,6)
list2=list("water","juice","lemonade","tea","coffee","milk")

list1[2:4]
list1[c(1,3,5)]
list2[2:4]
list2[c(1,3,5)]

#Vector Indexing

x=1:10
x

x[(x>5)]
x[(x%%2==0)]
x[(x%%2==1)]

x[5]=NA
x

y=x[!is.na(x)]
y

mean(x)
mean(y)

x[-(1:5)]
x[(6:10)]

#String vector
z=list(a1=1,a2="c",a3=1:3)
z

names(z)
names(z)[3]="c2"
z

#Empty Index
x=1:10
x
x[]

#Mixed Mode
ab=list(1,2,4,"X","Y","Z")
dim(ab)=c(2,3)
print(ab)
mode(print(ab))

#Factors

x=c(3,4,5,6,1,2,3,3,4,4,5,6)
x

y=as.factor(x)
y

x=factor(c("lemonade","lemonade","juice","lemonade","water"))
x

colours=c("blue","green","red")
colours

brands=c("A","A","B","B","B","B","C")
brands

brands_fac=factor(brands)
brands_fac

unclass(brands_fac)

colours[unclass(brands_fac)]

x=factor(c("lemonade","lemonade","juice","lemonade","water"))
unclass(x)



levels(x)

#Strings Format

print(sqrt(2))
print(sqrt(2),digits=5)

print(format(0.5,digits=10,nsmall=15))

format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "centre")
format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "left")
format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "right")
format(c("A", "BB", "CCC", "DDDD"), width = 7, justify = "none")

format(1234567,big.mark=",")