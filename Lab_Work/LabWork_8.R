# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Lab Work 8: String Operations & Pattern Replacement (sub, gsub)
# Course: R Programming Lab
# ==============================================================================

#Operations with string

#sub and gsub
y="Number of participants : 25"
sub("25","30",y)
y="Mr. Singh is the smart one. Mr. Singh is funny, too."
y
sub("Mr. Singh","Professor Jha",y)
gsub("Mr. Singh","Professor Jha",y)

#grep
str=c("R Course","exercises","include examples of R language")
grep("ex",str,value=T)
grep("ex",str,value=T)

str=c("R Course","exercises","include examples of r language","in R software")
grep("R",str,ignore.case=F,value=T)
grep("R",str,ignore.case=T,value=T)
grep("R",str,ignore.case=T,value=F)
grep("R",str,ignore.case=F,value=F)


x="R course 24.07.2021"
y="Number of participants: 25"
c(x,y)
grep("our",c(x,y))


#grepl

str=c("R Course","exercises","include examples of R language")
grepl("R",str)


#Data Frames

library(MASS)
painters

rownames(painters)

is.numeric(painters$School)
is.numeric(painters$Drawing)

is.factor(painters$School)
is.factor(painters$Drawing)

colnames(painters)

summary(painters)
summary(painters$School)

attach(painters)
summary(School)
summary(Composition)

detach(painters)
summary(School)

subset(painters,School=='F')
painters[painters[["School"]]=="F",]
subset(painters,Composition<=6)
subset(painters,School=='F',select=c(-3,-5))

splitted=split(painters,painters$School)
splitted

is.data.frame(splitted$A)

df1=data.frame(state=c("UP","MP","AP","JK"),popnsize=c(1000,2000,3000,4000))
df2=data.frame(state=c("UP","MP","AP","JK"),samplesize=c(100,200,300,400),surveycompleted=c("Yes","No","Yes","No"))
df1
df2
cbind(df1,df2)
merge(df1,df2,by="state")

df11=data.frame(state=c("UP","MP","AP","JK"),popnsize=c(1000,2000,3000,4000))
df22=data.frame(state=c("Bihar","Delhi","Punjab"),popnsize=c(100,200,300))
df11
df22
rbind(df11,df22)