#....DEUS SHIMO NGUNLA

#....EASTC/BDTS/25/02667
  
  
  ############################################################
# DIGITAL PLATFORM USER BEHAVIOR ANALYSIS
# This script loads the dataset, cleans the data,
# handles missing values, and answers all questions
# using appropriate statistical methods.
############################################################

# -------------------------------
# LOAD THE DATASET
# -------------------------------
# Load the .RData file from the specified location
load("C:/Users/user/Desktop/datasetA2_DTS.RData")

# View the dataset to understand its structure and variables
View(data_ds)

# -------------------------------
# DATA CLEANING
# -------------------------------
# Check the number of missing values in each column
colSums(is.na(data_ds))

# Replace missing values in usage_time with the mean usage time
data_ds$usage_time[is.na(data_ds$usage_time)] <-
  mean(data_ds$usage_time, na.rm = TRUE)

# Replace missing values in screen_time with the mean screen time
data_ds$screen_time[is.na(data_ds$screen_time)] <-
  mean(data_ds$screen_time, na.rm = TRUE)

# -------------------------------
# QUESTION ONE
# -------------------------------

# (a) Examine the relationship between usage time and screen time
# Spearman correlation is used because the relationship is non-linear
cor.test(
  data_ds$usage_time,
  data_ds$screen_time,
  method = "spearman",
  exact = FALSE
)

# Create a scatter plot to visualize the relationship
plot(
  data_ds$usage_time,
  data_ds$screen_time,
  xlab = "Usage Time (minutes)",
  ylab = "Screen Time (minutes)",
  main = "Usage Time vs Screen Time"
)

# -------------------------------

# (b) Test the association between user segment and subscription status
# Both variables are categorical, so a Chi-square test is appropriate
tab <- table(data_ds$user_segment, data_ds$subscription)
chisq.test(tab)

# -------------------------------

# (c) Calculate the mean usage time for each subscription type
aggregate(usage_time ~ subscription, data_ds, mean, na.rm = TRUE)

# -------------------------------
# QUESTION TWO
# -------------------------------

# (a) Test the claim that average daily usage time is 120 minutes
# Remove missing values before performing the test
usage <- na.omit(data_ds$usage_time)
t.test(usage, mu = 120)

# -------------------------------

# (b) Test the effect of an algorithm update on usage behavior
# Keep only complete pairs of before and after usage data
update_df <- na.omit(data_ds[, c("usage_before", "usage_after")])

# Perform a paired t-test because measurements are from the same users
t.test(
  update_df$usage_after,
  update_df$usage_before,
  paired = TRUE
)

# -------------------------------

# (c) Compare average usage time between Free and Paid users
aggregate(usage_time ~ subscription, data_ds, mean, na.rm = TRUE)

############################################################
# END OF SINGLE-PAGE SCRIPT
############################################################
  
  
  
