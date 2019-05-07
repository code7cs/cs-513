data("iris")
str(iris)
table(iris$Species)
head(iris)
iris
set.seed(9850)
runif(5)
gp <- runif(nrow(iris))
iris <- iris[order(gp),]
str(iris)
head(iris,10)
