#*******************ASSIGNMENT 02
#%%%%%%%%%%%%%%%%%%%%%%%%% NAME:RAMADHAN BUNDALA CHARLES
#%%%%% EASTC/BDTS/25/02683
#%%%%% INDIVIDUAL TASK ASSIGNMENT 02

#%%%%% MR EDWIN MAGOTI 

#%%%%% BACHELOR OF DEGREE IN DATA SCIENCE (BDTS) II

#%%%%% MODULE TITLE: DATA ANALYSIS WITH R

#%%%%% MODULE CODE: DSU07317

#%%%%% PRACTICAL ASSIGNMENT 02


#*************QUESTION ONE***************

#A digital platform collected user-level data on daily behavior.
#The data set contains measurement errors, missing values, and non-linear patterns.

#Using the provided data set: load the data file into R format


load("C:/Users/user/Desktop/datasetA2_DTS.RData")
View(data_ds)

#check the missing values
colSums(is.na(data_ds))

# we have to handle the missing values(using mean method)for the column  of usage_time
data_ds$usage_time[is.na(data_ds$usage_time)] =
  mean(data_ds$usage_time, na.rm = TRUE)

# for the column of screen_time
data_ds$screen_time[is.na(data_ds$screen_time)] =
  mean(data_ds$screen_time, na.rm = TRUE)

#...(a) Assess the relationship between daily usage time and screen time.
#since our dataset is non-linear pattern  we use spearman method;
# Spearman correlation 
cor.test(data_ds$usage_time,data_ds$screen_time,
         method = "spearman",exact = FALSE)

#Interpretation (relationship):
#Since th p-value is less than 0.05 , there is a significant positive relationship between usage time and screen time.
# diagramatically relationship

plot(data_ds$usage_time, data_ds$screen_time,
     xlab = "Usage Time",
     ylab = "Screen Time",
     main = "Usage Time vs Screen Time")
# THEREFORE:Positive RELATIONSHIP: 
#There appears to be a general upward trend—higher usage time tends to correspond with higher screen time. 
#This indicates a likely correlation between the two variables.


#...(b)Examine whether the user segment is associated with subscription status. 
# Contingency table
tab = table(data_ds$user_segment, data_ds$subscription)
# Chi-square test
chisq.test(tab)

#Interpretation:A significant (p-value<2.2e-16) indicates that user segment is associated with subscription status.

#...(c) Based on your results, provide one statistically justified conclusion about user behavior. 
aggregate(usage_time ~ subscription, data_ds, mean, na.rm = TRUE)

## Therefore the results indicate that the user users who pay for subscription speand more usage_time 
#while those with free  subscription spend less time.



#************** QUESTION TWO**************

#The platform claims that users' average daily usage time is 120 minutes. 
#Using the provided data set:

#... (a) Test the validity of this claim. 
usage = na.omit(data_ds$usage_time)
t.test(usage, mu = 120)

#alternative hypothesis: true mean is not equal to 120 with 95 percent confidence interval:
#THEREFORE THE CLAIM IS INVALID.

#... (b) Assess whether the algorithm update changed user behavior. 

update_df = na.omit(data_ds[, c("usage_before", "usage_after")])

t.test(update_df$usage_after,
       update_df$usage_before,
       paired = TRUE)

# HENCE:A paired t-test showed a statistically significant increase in usage time after the algorithm update 
#(t = 5.53, df = 299, p < 0.05). The mean usage increased by approximately 6.9 minutes, 
#indicating that the algorithm update significantly changed user behavior.

#...(c)Compare average usage time between Free and Paid users.

aggregate(usage_time ~ subscription, data_ds, mean, na.rm = TRUE)

#there is a significant difference in average usage time between Free and Paid users. 
#Specifically, Paid users spend more time on the platform than Free users.
