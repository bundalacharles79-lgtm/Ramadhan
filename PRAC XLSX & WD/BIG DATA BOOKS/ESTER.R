#**********QUESTION 01

set.seed(123)

# (i) Household IDs
households <- paste0("HH", sprintf("%02d", 1:15))
months <- 1:12
months

# (iii) Household characteristics
hh_size <- sample(2:10, 15, replace = TRUE)
irrigation <- sample(c(0,1), 15, replace = TRUE, prob = c(0.4, 0.6))

education <- sample(
  c("None", "Primary", "Secondary", "Tertiary"),
  15, replace = TRUE,
  prob = c(0.2, 0.35, 0.3, 0.15)
)

# (ii) Simulate monthly harvests
harvest_list <- lapply(1:15, function(i){
  
  base <- runif(1, 5, 20)
  trend <- runif(1, -1, 1)
  
  harvest <- base + trend * months + rnorm(12, 0, 1)
  print(harvest_list)
  
  # (ii.c) introduce extreme outlier
  outlier_month <- sample(1:12, 1)
  harvest[outlier_month] <- harvest[outlier_month] * sample(c(0.2, 3), 1)
  
  data.frame(
    household_id = households[i],
    month = months,
    harvest = pmax(harvest, 0.1),
    hh_size = hh_size[i],
    irrigation = irrigation[i],
    education = education[i]
  )
})

# (v) Combine to long format
df1 <- do.call(rbind, harvest_list)

# (vi) Ordered education factor
df1$education <- factor(
  df1$education,
  levels = c("None", "Primary", "Secondary", "Tertiary"),
  ordered = TRUE
)

# (vii) Harvest level by household quartiles
df1$harvest_level <- ave(
  df1$harvest, df1$household_id,
  FUN = function(x){
    cut(x,
        quantile(x, probs = c(0, .25, .5, .75, 1)),
        labels = c("Low", "Medium", "High", "Very High"),
        include.lowest = TRUE)
  }
)

# (viii) Priority households
priority <- subset(df1,
                   harvest < 8 |
                     (irrigation == 0 & education <= "Primary" & hh_size > 6)
)

# (ix) Average monthly harvest per household
avg_hh <- aggregate(harvest ~ household_id, df1, mean)

# (x) Average harvest by education & irrigation
avg_edu_irr <- aggregate(harvest ~ education + irrigation, df1, mean)

# (xi) Consistently improving (>=8 increasing months)
improving <- by(df1, df1$household_id, function(d){
  sum(diff(d$harvest) > 0) >= 8
})

improving_households <- names(improving[improving == TRUE])




#******************QUESTION 2



set.seed(123)

# (i) Household IDs
households <- paste0("HH", sprintf("%02d", 1:15))
months <- 1:12

# (iii) Household characteristics
hh_size <- sample(2:10, 15, replace = TRUE)
irrigation <- sample(c(0,1), 15, replace = TRUE, prob = c(0.4, 0.6))

education <- sample(
  c("None", "Primary", "Secondary", "Tertiary"),
  15, replace = TRUE,
  prob = c(0.2, 0.35, 0.3, 0.15)
)

# (ii) Simulate monthly harvests
harvest_list <- lapply(1:15, function(i){
  
  base <- runif(1, 5, 20)
  trend <- runif(1, -1, 1)
  
  harvest <- base + trend * months + rnorm(12, 0, 1)
  
  # (ii.c) introduce extreme outlier
  outlier_month <- sample(1:12, 1)
  harvest[outlier_month] <- harvest[outlier_month] * sample(c(0.2, 3), 1)
  
  data.frame(
    household_id = households[i],
    month = months,
    harvest = pmax(harvest, 0.1),
    hh_size = hh_size[i],
    irrigation = irrigation[i],
    education = education[i]
  )
})

# (v) Combine to long format
df1 <- do.call(rbind, harvest_list)

# (vi) Ordered education factor
df1$education <- factor(
  df1$education,
  levels = c("None", "Primary", "Secondary", "Tertiary"),
  ordered = TRUE
)

# (vii) Harvest level by household quartiles
df1$harvest_level <- ave(
  df1$harvest, df1$household_id,
  FUN = function(x){
    cut(x,
        quantile(x, probs = c(0, .25, .5, .75, 1)),
        labels = c("Low", "Medium", "High", "Very High"),
        include.lowest = TRUE)
  }
)

# (viii) Priority households
priority <- subset(df1,
                   harvest < 8 |
                     (irrigation == 0 & education <= "Primary" & hh_size > 6)
)

# (ix) Average monthly harvest per household
avg_hh <- aggregate(harvest ~ household_id, df1, mean)

# (x) Average harvest by education & irrigation
avg_edu_irr <- aggregate(harvest ~ education + irrigation, df1, mean)

# (xi) Consistently improving (>=8 increasing months)
improving <- by(df1, df1$household_id, function(d){
  sum(diff(d$harvest) > 0) >= 8
})

improving_households <- names(improving[improving == TRUE])







#####################################
#  question 01

set.seed(123)

library(dplyr)
library(tidyr)
library(purrr)

# -----------------------------
# (i) Household IDs
# -----------------------------
n_households <- 15
households <- paste0("HH_", sprintf("%02d", 1:n_households))
print(n_households)

# -----------------------------
# (iii) Household characteristics
# -----------------------------
hh_df <- tibble(
  household_id = households,
  hh_size = sample(2:10, n_households, replace = TRUE),
  irrigation = sample(c(0,1), n_households, replace = TRUE, prob = c(0.4,0.6)),
  education = sample(
    c("None","Primary","Secondary","Tertiary"),
    n_households,
    replace = TRUE,
    prob = c(0.3,0.35,0.25,0.1)
  )
)

# -----------------------------
# (ii) Simulate monthly harvests
# -----------------------------
months <- 1:12

harvest_df <- map_dfr(households, function(hh){
  
  base <- runif(1, 5, 20)                 # (ii-a)
  trend <- runif(1, -1, 1)                # (ii-b)
  noise <- rnorm(12, 0, 2)
  
  harvest <- base + trend * months + noise
  
  # (ii-c) introduce extreme outlier
  outlier_month <- sample(months, 1)
  harvest[outlier_month] <- harvest[outlier_month] *
    sample(c(0.2, 2.5), 1)
  
  tibble(
    household_id = hh,
    month = months,
    harvest = pmax(harvest, 0.1)
  )
})


##(iii)


hh_info <- tibble(
  household_id = household_id,
  hh_size = sample(2:10, 15, replace = TRUE),
  irrigation = sample(c(0,1), 15, replace = TRUE, prob = c(0.4, 0.6)),
  education = education   # (iv) imeunganishwa hapa BAADA ya kuundwa
)







# (iv)
education <- sample(
  c("None", "Primary", "Secondary", "Tertiary"),
  15,
  replace = TRUE,
  prob = c(0.3, 0.35, 0.25, 0.1)
)




# -----------------------------
# (v) Combine into long-format DF
# -----------------------------
df <- harvest_df %>%
  left_join(hh_df, by = "household_id")

# -----------------------------
# (vi) Education as ordered factor
# -----------------------------
df <- df %>%
  mutate(
    education = factor(
      education,
      levels = c("None","Primary","Secondary","Tertiary"),
      ordered = TRUE
    )
  )

# -----------------------------
# (vii) Harvest level (quartiles per household)
# -----------------------------
df <- df %>%
  group_by(household_id) %>%
  mutate(
    harvest_level = ntile(harvest, 4) %>%
      factor(labels = c("Low","Medium","High","Very High"))
  ) %>%
  ungroup()

# -----------------------------
# (viii) Priority households
# -----------------------------
priority_households <- df %>%
  group_by(household_id) %>%
  summarise(
    priority = any(harvest < 8) |
      (
        first(irrigation) == 0 &
          first(education) <= "Primary" &
          first(hh_size) > 6
      ),
    .groups = "drop"
  ) %>%
  filter(priority)

# -----------------------------
# (ix) Average monthly harvest per household
# -----------------------------
avg_harvest_hh <- df %>%
  group_by(household_id) %>%
  summarise(avg_harvest = mean(harvest), .groups = "drop")

# -----------------------------
# (x) Average harvest by education & irrigation
# -----------------------------
avg_harvest_group <- df %>%
  group_by(education, irrigation) %>%
  summarise(avg_harvest = mean(harvest), .groups = "drop")

# -----------------------------
# (xi) Consistently improving households
# (>= 8 months of increase)
# -----------------------------
improving_households <- df %>%
  arrange(household_id, month) %>%
  group_by(household_id) %>%
  summarise(
    increases = sum(diff(harvest) > 0),
    improving = increases >= 8,
    .groups = "drop"
  ) %>%
  filter(improving)

# -----------------------------
# Outputs
# -----------------------------
df
priority_households
avg_harvest_hh
avg_harvest_group
improving_households



#question 02

set.seed(123)

library(dplyr)
library(tidyr)

#(a)vector product

product_id <- paste0("P", sprintf("%02d", 1:25))
region <- paste0("R", 1:10)

#(b)long-format data frame

df <- expand.grid(
  product_id = product_id,
  region = region
)

#(c)
#(i)
#(ii)
#(iii)

# Base effects
product_effect <- runif(25, 50, 200)
region_effect <- runif(10, 0.8, 1.2)

df <- df %>%
  mutate(
    base_sales =
      product_effect[match(product_id, product_id)] *
      region_effect[match(region, region)],
    sales = base_sales + rnorm(n(), 0, 20)
  )

# Force non-negative sales
df$sales <- pmax(df$sales, 0)

# Introduce at least 5 zero-sales entries randomly
zero_rows <- sample(1:nrow(df), 5)
df$sales[zero_rows] <- 0


#(d)
df <- df %>%
  group_by(region) %>%
  mutate(avg_region_sales = mean(sales)) %>%
  ungroup() %>%
  mutate(
    region = factor(region,
                    levels = unique(region[order(-avg_region_sales)]))
  ) %>%
  select(-avg_region_sales)

#(e)

df <- df %>%
  group_by(region) %>%
  mutate(
    sales_category = ntile(sales, 4) %>%
      factor(labels = c("Low", "Medium", "High", "Very High"))
  ) %>%
  ungroup()

#(f)
star_products <- df %>%
  filter(sales_category == "Very High") %>%
  group_by(product_id) %>%
  summarise(
    top_regions = n_distinct(region),
    .groups = "drop"
  ) %>%
  filter(top_regions >= 4) %>%
  mutate(star = TRUE)

#(g)

avg_sales_summary <- df %>%
  group_by(region, sales_category) %>%
  summarise(
    avg_sales = mean(sales),
    .groups = "drop"
  )

#(h)

inconsistent_products <- df %>%
  group_by(product_id) %>%
  summarise(
    has_high = any(sales_category == "Very High"),
    has_low  = any(sales_category == "Low"),
    .groups = "drop"
  ) %>%
  filter(has_high & has_low) %>%
  pull(product_id)


#(i)
#(i)
#(ii)

product_summary <- df %>%
  group_by(product_id) %>%
  summarise(
    total_sales = sum(sales),
    regions_top_quartile = sum(sales_category == "Very High"),
    .groups = "drop"
  )


