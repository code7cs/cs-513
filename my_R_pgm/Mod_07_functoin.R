###### define a funciton! ####

mmnorm <- function(x, minx, maxx)
{
  z <- ((x - minx) / (maxx - minx))
  return(z)
}

mmnorm2 <- function(x)
{
  z <- ((x - min(x)) / (max(x) - min(x)))
  return(z)
}

myvector <- 1:20
mmnorm2(myvector)

myvector <- 1:20
mmnorm(myvector, 1, 20)
mmnorm(myvector, min(myvector), max(myvector))

maxx <- 20
minx <- 1
mmnorm4 <- function(x)
{
  minx <- 0
  z <- ((x - minx) / (maxx - minx))
  y <- list(z, minx, maxx)
  return(y)
}
results <- mmnorm4(myvector)

f_print <- function(x1, x2, x3, x4, x5)
{
  print(c('value of x1',x1))
  print(c('value of x2',x2))
  print(c('value of x3',x3))
  print(c('value of x4',x4))
  print(c('value of x5',x5))
}

f_print(10, 5, 3, 2, 1)
f_print(x2=10, x5=5, 3, 2, 1)

subset <- cbind(Titanic)


?install.packages
#install.packages(kknn)
#installed.packages()

?sample()
sample(1:100, 80)
sort(sample(1:100, 80))

#library(kknn)


sort(sample(150, as.integer(.65*150)))


test<-iris[index,]
training <- iris[-index,]

predict_k5 <- kknn(formula=Species~., training, test, k=5, kernel = "rectangular")
fit <- fitted(predic)













