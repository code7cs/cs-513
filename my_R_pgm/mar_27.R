rm(list = ls())
## ####
install.packages("rpart")
install.packages("rpart.plot")
install.packages("rattle")
install.packages("RColorBrewer")
## step 2: example ####

dsn <-
  read.csv("/Users/fanoh/Desktop/___DataMining 513/Raw_data/Titanic_rows.csv")

set.seed(123)

index<- sort(sample(nrow(dsn), round(.25* nrow(dsn))))
training<-dsn[-index,]
test<-dsn[index,]

?rpart()
#Grow the tree
dev.off()
CART_class <- rpart( Survived~., data=training)
