# importing data from stata to R of BP

install.packages("haven", lib="C:/Users/YourName/R/win-library/4.4")
install.packages("haven")
library(haven)
mydata <- read_dta("C:\\Users\\user\\Desktop\\STATA TEST 02.dta")
View(mydata)
head(mydata)
summary(mydata)
