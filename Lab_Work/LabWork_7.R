# ==============================================================================
# Name: Hasnain khan | Roll no - 23102A0075 | CMPN A
# Lab Work 7: Strings - Display and Formatting (print, cat, paste)
# Course: R Programming Lab
# ==============================================================================

#Strings - Display and Formatting

print("The zero occurs at",2*pi,"radians.")

print("The zero occurs at");
print(2*pi);
print("radians")

#cat
cat("The zero occurs at","\n",2*pi,"\n","radians.","\n")

d=date()
cat("Today's date is :",d,"\n")

x=1:10
x

cat(x,sep=" ++ ")
cat("\n")
cat(x,sep=" / ")

x=7
cat("The square of",x,"is",x^2,"!\n")
cat("The square root of",x,"is approximately",format(sqrt(x),digits=3),"\n")

evenno = c(2,4,6,8,10)
evenno
cat("The first few even numbers are:",evenno,"...\n")

x=1:10
x
cat(x,fill=2,labels=paste("(",letters[1:10],"):"))

#paste

paste(1:12)
as.character(1:12)

paste("Everybody","loves","R Programming")
paste("Everybody","loves","R Programming",sep="*")
paste("Everybody","loves","R Programming",sep="===")

names=c("Prof. Singh","Mr. Venkat","Dr. Jha")
names
paste(names,"is","a good","person")
paste(names,"is","a good","person",collapse=", and ")

paste0(1:10)
paste(1:10)

paste0(1:10,c("st","nd","rd",rep("th",7)))
paste(1:10,c("st","nd","rd",rep("th",7)))

#String Splitting

##strsplit
x="The&!syntax&!of&!paste&!is!&available!&inthe online-help"
x
strsplit(x,split="!")
strsplit(x,split="&!")

y=strsplit(x,split="!&")
y
y[[1]][1]
y[[1]][2]
y[[1]][3]

dates=c("2020-07-24","2021-08-25","2022-09-26","2023-10-27")
datesplt=strsplit(dates,"-")
datesplt
datemat = matrix(unlist(datesplt), nrow = 4, ncol=3, byrow=TRUE)
datemat
datemat = matrix(as.numeric(unlist(datesplt)), nrow = 4, ncol=3, byrow=TRUE)
datemat

strsplit("Shalabh",split="")

#Manipulations with Strings and Alphabets
x="R course 23.09.2026"
y="Number of participants: 25"
nchar(x)
nchar(y)

nzchar(x)
nzchar(y)

x=c("Apple","Banana","Cake")
nchar(x)

y=c(2,4,6)
nchar(y)

x="R course 23.09.2026"
toupper(x)
tolower(x)

