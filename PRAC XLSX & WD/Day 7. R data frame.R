## R data frame
## Creation of data frame

id <- c(1:5)
name <- c("Victor","Victoria","Peter","Issa","Bwire")
salary <- c(653.5,342,666,542,143.6)
date <- as.Date(c("2012-01-01","2023-09-23","2024-11-15","2024-05-12",
                  "2025-03-25"))

## data frame
data <- data.frame(id,name,salary,date)
print(data)
## Altenative 
data <-data.frame(id= c(1:5),
           name = c("Victor","Victoria","Peter","Issa","Bwire"),
           salary = c(653.5,342,666,542,143.6),
           date = as.Date(c("2012-01-01","2023-09-23","2024-11-15","2024-05-12",
                             "2025-03-25")))

### Extracting/accessing data from data frame
## extracting name variable
data$name
data$salary
## giving name extracted variable
names <- data$name
print(names)
data$date
## Extracting rows in data frame
data[1,]# extract one row
data[c(1,2),]# extract two row
data[c(1,3),3]# extract the value from row 1,3 and column 3
## extract Issa name in our data frame
data[4,2]
data[c(2,3,4),1]

### Removing data in data frame
data$date <- NULL  #removing data col from data frame
print(data$date)
print(data)

data$salary <- NULL    # removing salary col in data set
print(data)

# library(writexl)
# write_xlsx(data, path = "data/exported_data.xlsx")

### Adding variable in data frame

data$expenditure <- c(334,233,654,67,123)
print(data)

data$consumption <- c(2000,7000,10000,300,30000)
print(data)

data$dailyuse <- c(400,200,700,1000,5000)
print(data)

## altenative using mutate function
library(tidyverse)
data <- data |> 
  mutate(income=c(3423,4515,652,652,6521))
print(data)

### selecting income and name variables in the dataset
name_income <- data |> 
  select(name,income)
print(data)



