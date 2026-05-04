### Factor creation
rm(list = ls())
## Fctor are created using function factor()
## Syntax that can be used is
factor(x,levels = ,labels = )
sex1 <-c("Male","Female","Female","Female","Male","Male","Female")
class(sex1)
sex1_factor <- as.factor(sex1);class(sex1_factor)
### Or 
sex2 <- factor(c("Male","Female","Female","Female","Male","Male","Female"))
class(sex2)

Education_level <- factor(c("No formal education","Primary education","Secondary Educatiuon","Tertiary education","Bachelor degree"))

### Check the levels of factor
levels(sex1)
levels(sex2)
levels(Education_level)

##Spcifying the level of factor
## Option1
sex1 <-c("Male","Female","Female","Female","Male","Male","Female")
sex1 <- factor(sex1,levels = c("Male","Female"))
levels(sex1)
## optiuon 2
sex2 <- factor(c("Male","Female","Female","Female","Male","Male","Female"),
               levels = c("Male","Female"))
levels(sex2)
Education_level <- factor(c("No formal education","Primary education","Secondary Educatiuon","Tertiary education","Bachelor degree"),
                          levels = c("No formal education","Primary education","Secondary Educatiuon","Tertiary education","Bachelor degree"))
levels(Education_level)

## Label of levels
## Option 1
sex1 <-c("Male","Female","Female","Female","Male","Male","Female")
sex1 <- factor(sex1,
               levels = c("Male","Female"),
               labels = c("Male"="Me","Female"="Ke")
               )
levels(sex1)
sex2 <- factor(c("Male","Female","Female","Female","Male","Male","Female"),
               levels = c("Male","Female"),
               labels = c("Male"="Me","Female"="Ke"))
levels(sex2)
Education_level <- factor(c("No formal education","Primary education","Secondary Educatiuon","Tertiary education","Bachelor degree"),
                          levels = c("No formal education","Primary education","Secondary Educatiuon","Tertiary education","Bachelor degree"),
                          labels = c("No formal education"="No education","Primary education"="Primary","Secondary Educatiuon"="Secondary",
                                     "Tertiary education"="Tertiary","Degree"))
levels(Education_level)

### Factor creation for Ordinal scale variable
Response1 <- c("Strongly agree","Strongly disagree","Neutral","Agree","Agree","Disagree","Agree",
              "Disagree","Neutral","Strongly agree")

Response_factor <- factor(Response,
                          levels = c("Strongly disagree",
                          "Disagree","Neutral","Agree",
                          "Strongly agree"),
                          ordered = TRUE)
levels(Response_factor)


Response2 <- c("Low","Medium","High","High","Low","Medium","High")
Response2_factor <- factor(Response2,
                    levels = c("Low","Medium","High"),
                    ordered = T)

levels(Response2_factor)
## Factor in Data frame
height <- c(123,23,456,78,12,56,34,7,98,39)
income <- c(5400,10000,34200,5653,23410,43542,12999,1232,54365,9000)
sex1 <-c("Male","Female","Female","Female","Male","Male","Female","Male","Female","Female")
sex1 <- factor(sex1,
                 levels=c("Male","Female"))
Dataframe <- data.frame(height,income,sex1)
print(Dataframe)
View(Dataframe)

## chech if sex is a factor 
is.factor(Dataframe$sex1)
is.character(Dataframe$sex1)
is.numeric(Dataframe$sex1)
is.numeric(Dataframe$income)


