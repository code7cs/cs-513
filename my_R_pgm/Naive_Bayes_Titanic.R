rm(list = ls())

install.packages('e1071', dependencies = TRUE)


library(class)
library(e1071)


? naiveBayes()




Titanic_rows <-
  read.csv("/Users/fanoh/Desktop/___DataMining 513/Titanic_rows.csv")

view(Titinic_rows)


table(class = Titanic_rows$Class, Survival = Titanic_rows$Survived)
prop.table(table(Class = Titanic_rows$Class, Survival = Titanic_rows$Survived))

#ftable(class = Titanic_rows$Class)


nBayes_class <- naiveBayes(Survived ~ Class, data = Titanic_rows)
category_class <- predict(nBayes_class, Titanic_rows)


data_class <- cbind(Titanic_rows, category_class)
table(Class = Titanic_rows$Class, Survived = Titanic_rows$Survived)
table(Class = Titanic_rows$Class, NBayes = category_class)

nBayes_all <- naiveBayes(Survived ~ ., data = Titanic_rows)

category_all <- predict(nBayes_all, Titanic_rows)

table(nBayes_all = category_all, Survived = Titanic_rows$Survived)
NB_wrong <- sum(category_all != Titanic_rows$Survived)
NB_error_rate <- NB_wrong / length(category_all)
NB_error_rate

rm(list = ls())

data(iris)
View(iris)

length(iris)
nrow(iris)
iris_missing <- iris
iris_missing[c(3, 30, 40), 3] <- NA

summary(iris)

summary(iris_missing)


boxplot(iris[1:3])

hist(iris$Sepal.Length)

pairs(iris[1:2])

pairs(iris[1:4])

iris_No_missing <- na.omit(iris_missing)

install.packages('VIM')


?KNN
