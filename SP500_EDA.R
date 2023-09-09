#Question 1
library(readxl)
SP500 <- read_excel("Documents/Maryville University/DSCI_502/SP500.xls")
View(SP500)

#Question 2
dim(SP500)

#Question 3
SP500[, c('SP500','CPI','Rate')]

#Question 4
SP500[c(10,100,500,1500),]

#Question 5
SP500[(SP500$SP500 > 2000) | (SP500$CPI < 100),]

#Question 6
subset(SP500, (Earnings > 50) & (Rate < 3), select = c(Earnings, Rate))

#Question 7
SP500$Rate <- NULL
print(colnames(SP500))

#Question 8
CPI201809 <- subset(SP500, (Date == 2018.09), select = c(CPI))
SP500$NewRealPrice <- (SP500$SP500 * SP500$CPI) /unlist(CPI201809)
head(SP500)

#Question 9
SP500$NewRealEarnings <- (SP500$Earnings * SP500$CPI) /unlist(CPI201809)
head(SP500)

#Question 10
SP500$PERatio <- SP500$NewRealPrice/SP500$NewRealEarnings
head(SP500)
