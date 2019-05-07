rm(list = ls())
install.packages("rpart")
install.packages("rpart.plot")

install.packages("ggplot2")
# load these packages
library(rpart)
library(rpart.plot)
library(ggplot2)

data()
data(msleep)
str(msleep)

df <- msleep[, c(3, 6, 10, 11)]
str(df)
head(df)

m1 <- rpart(sleep_total ~ ., data = df, method = "anova")
rpart.plot(m1,
           type = 3,
           digits = 3,
           fallen.leaves = TRUE)
p1 <- predict(m1, df)
p1

MAE <- function(actual, predicted) {
  mean(abs(actual - predicted))
}

MAE(df$sleep_total, p1)











