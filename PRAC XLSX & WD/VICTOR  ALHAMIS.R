# creating newe folder
getwd()
setwd("C:\\Users\\user\\Desktop\\VICTOR NEW")
install.packages("readxl")
library(readxl)
data<- read_excel("C:\\Users\\user\\Desktop\\VICTOR NEW\\Health_data.xlsx")
View(data)
load("C:\\Users\\user\\Desktop\\VICTOR NEW\\Health_data.xlsx")
