rm(list = ls())

install.packages("randomForest")
library(randomForest)

dsn <- read.csv("/Users/fanoh/Desktop/___DataMining 513/Raw_data/Titanic_rows.csv")

dsn2<- na.omit(dsn)
index <- sort(sample(nrow(dsn2), round(.25 * nrow(dsn2))))
training <- dsn2[-index, ]
test <- dsn2[index, ]

fit <- randomForest( Survived ~., data=training, importance=TRUE, ntree= 1000)

importance(fit)
varImpPlot(fit)

prediction <- predict(fit, test)
table(actural=test[,4],prediction)

wrong<- (test[,4] != prediction)
erro_rate<- sum(wrong)/length(wrong)
print(erro_rate)
