## VECTOR MANIPULATION/MANAGEMENT
# Accessing element in a vector

University <- c("UDSM","MZUMBE","SUA","IFM","TIA","DIT","UDOM")
## accesss ythe second  element
University[2]
#3 access the sixth element
University[6]
## accessing all element except the third element
University[-3]

## accessing more than one element in a vector using "c()" function

University[c(2,4,6)]

## accessing other element except 2,4,6
University[-c(2,4,6)]

### accessing the range of element using colon
University[2:4]

## Addition of element in a vector
University <- c("UDSM","MZUMBE","SUA","IFM","TIA","DIT","UDOM")

University[8] <- "NIT"
print(University)

### addition of multiple element in a vector
University[c(9,10,11)] <- c("MUST","MWALIMU NYERERE","TIPM")
print(University)

## Updating element in a vector
University <- c("UDSM","MZUMBE","SUA","IFM","TIA","DIT","UDOM")
University[2] <- "SUA"

###Sorting a vector in R

vector1 <- c(3,6,4,7,9,2,1,-4)

sort(vector1)
University <- c("UDSM","MZUMBE","SUA","IFM","TIA","DIT","UDOM")
sort(University)

## sort the element of vector in descending order
sort(vector1,decreasing = TRUE)
sort(University,decreasing = TRUE)

## Missing information in a vector
vector2 <- c(3,6,4,7,9,2,1,-4,10,34,2,5,12,NA)
mean(vector2)
## we need to adding the condition argument
mean(vector2,na.rm = T)
var(vector2,na.rm = T)


### descriptive statistics
##MEAN
mean(vector2,na.rm = T)
var(vector2,na.rm = T)

## GEOMETRIC AND HARMONIC MEAN
library(psych)
geometric.mean(vector2,na.rm = T)
harmonic.mean(vector2,na.rm = T)

## MEDIAN
median(vector2)
median(vector2,na.rm = T)

##MODE
getmode(vector2)

vector3 <- c(2,1,2,3,1,2,3,4,1,5,6,3,2,3)
mode <- function(vector3){
  uniqv <- unique(vector3)
  uniqv[which.max(tabulate(match(vector3,uniqv)))]
}
mode(vector3)





