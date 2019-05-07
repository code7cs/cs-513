##  read.csv   ####

?read.csv()

Titanic<-
  read.csv("/Users/fanoh/Desktop/___DataMining 513/Titanic_rows.csv")

file_name <- file.choose()  ## chose a dataset

Titanic <- read.csv(file_name)

View(Titanic)
is.data.frame(Titanic)
dsn<-
  read.csv("/Users/fanoh/Desktop/___DataMining 513/Titanic_rows.csv")
