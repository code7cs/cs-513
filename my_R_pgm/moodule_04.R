########## vector() #########
x<-1:9
mode(x)
typeof(x)
is.vector(x)
length(x)

########## factor() #########
?factor()

cat<-c("good", "bad", "good", "bad", "bad", "bad", "good")
typeof(cat)   ### character

cat2<-factor(cat)
cat2
typeof(cat2)  ### integer

cat3<-as.integer(cat)  ### warning
cat4<-as.integer(cat2)
cat4

cat5<-factor(cat,levels=(c("good","bad")))
cat5
catnumb<-as.numeric(cat5)




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



########## Matrix ##############
x<-1:9
?matrix()
is.matrix(x)

mx1<- matrix(x, nrow = 3, ncol = 3, byrow = FALSE)
mx1

colnames(mx1)<-c("col1", "col2", "col3")
rownames(mx1)<-c("row1", "row2", "row3")
mx1

dimnames(mx1) <- list(c("a", "b", "c"), c("d", "e"))


mxmult1_1 <- mx1 %*% mx1 

## mx1 is single matrix
invmx1<-solve(mx1)


######## list #########
my.lst <- list(34453, c("Hanfan", "Wang"), c(14.3, 12, 15, 19))
my.lst
str(my.lst)
length(my.lst)   ### 3


my.lst <- list(stud.id=34453, stud.name=c("First Name", "Last Name"), stud.marks=c(14.3, 12, 15, 19))
is.list(my.lst)
mode(my.lst)
typeof(my.lst)
length(my.lst)

my.lst2 <- list(seq=1:10, my.lst)

length(my.lst2)  ### 2


## install.packages("modeest")
## library(modeest)


installed.packages()


######## data.frame #########
my.dataset <- data.frame(site = c('A', 'B', 'C', 'D', 'E'), ph = c(7.4, 6.3, 8.6, 7.2, 8.9))
is.list(my.dataset)
is.data.frame(my.dataset)

is.matrix(my.dataset)   ### a matrix must be same type
typeof(my.dataset)
length(my.dataset)    ### 2

View(my.dataset)

data()

data(iris)
View(iris)
typeof(iris)
length(iris)
nrow(iris)
x<-c(22,33,44)
y<-c(11,12,15)

?iris

iris[2,3]  ### from iris => 1.4
iris[,3]   ### every value in row 3
iris[,-3]  ### except row 3
iris[c(13,5,10), c(3,2,4)]

iris[3,]
tridcol_allrows<-iris[,-3]

subset <- iris[-c(5, 1, 20, 23), -5]

subset2 <- iris[100:120,]

subset3 <- iris[c(T,F,F,F),c(2,3,4)]

subset4 <- iris[c(T,F,F,F),]

### stopped here

idx <- seq(1, nrow(iris), 5)

training <- iris[-idx,]
test <- iris[idx,]









