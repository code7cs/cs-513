rm(list=ls())
##### Company: Stevens Institute of Technology ####
#Project
#Purpose
#First Name : Hanfan
#Last Name: Wang
#Id: 10442733
#Date
#Comments

x<-25
x

?length()
hello<-"Hello there"
hello
length(hello)
is.vector(hello)

?nchar()
nchar(hello)

x<-c(1,2,4)
length(x)
is.vector(x)
min(x)


x1<-c(10,5,6,6,6,7)
x1

?mode()
mode(x1)
x2<-c(1,2,3,4)

x3<-x1+x

x1
x
x3

?seq()



help()
help(c)
?c()
example(c)
help.start()


######  use C  ####
x<-c(1,2,2,NA,5,10)

min(x)
max(x)
mean(x)


?min()


min(x,na.rm = TRUE)
max(x,na.rm = TRUE)
mean(x,na.rm = TRUE)



y<-mean(x,na.rm = TRUE)
y
?summary()
summary(x)


x<-c(1,2,NA,10)
x


?mean()

mean(x)
y<-mean(x)
y
summary(x)


############## ls()  ################

ls()

############## rm()   ################
?rm()
rm("x")


ls()
objects<-ls()
rm(list=ls())


##### Feb 13rd 2019 #####

?seq()
x3<-seq(from=10.2,to=26.5,by=2.1)
mode(x3)
typeof(x3)

x4<-c(1,2,3,4,5,6)
mode(x4)
typeof(x4)

x5<-seq(from=1,to=6,by=1)
typeof(x5)

x6<-1:6
typeof(x6)

x7<-as.integer(x5)
typeof(x7)

x8<-c(x6,hello)
typeof(x8)

mixed_vector<-c(1,2,8.5,'5')
mode(mixed_vector)
typeof(mixed_vector)


ls()
?rm()

objects<-ls()

rm(list=ls())


myfirstname<-"Hanfan"
mylastname<-"Wang"
myfirstlast<-c(myfirstname,mylastname)
myfirstlast

rm("myfirstname")
myfirstname
myfirstlast
myfirstname<-"Henry"
myfirstlast

avector<-c(1,2,3,4)
avector
names(avector)<-c("one","two","three","four")
avector

typeof(avector)
elementnames<-names(avector)


x<-1:9
mode(x)
typeof(x)
is.vector(x)
length(x)

?factor()
cat<-c("good","bad","good","bad","bad","bad","good")
typeof(cat)
cat2<-factor(cat)
cat2
typeof(cat2)

cat3<-as.integer(cat)


days<-c("Monday", "Sunday","Tuesday","Wednesday","Thursday","Saturday")
days
days_factor<-factor(days)
days_factor

days_factor<-factor(days,levels=(c("Monday","Tuesday","Wednesday",
                                   "Thursday","Friday","Saturday",
                                   "Sunday")))

days_factor
asint<-as.integer(days_factor)
asint


mode(days)
typeof(days_factor)
mode(days_factor)







