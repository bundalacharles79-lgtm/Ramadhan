

                     #1. INTRODUCTION

#DEF OF R PROGRAMMING LANGUAGE -it provide programming language fo data analysis
# R STUDIO - is a user interface that is integrated with R console
# for clearing the screen ,press ctrl + L in the keyboard or selecting the option "clear console" from the edit menu

# for QUITTING R type the command quit() or q() in the console
# To comment the statement starting with # at the begging of the statement


                     #2. WORKING DIRECTORY

getwd() #This is used when some one want to know current working directory
getwd()

setwd() #This is used when some one want to set working directory
setwd("C:\\Users\\user\\Desktop\\v1")



                     #3.  DATA OPERATORS

# Arithmetic operators
# Assignment operators
# Relational operators
# Logical operators
# Special operators


#3.1 ARITHMETIC OPERATORS ( involve +,-,*,^,/,%%,%/%)

100 + 300

125+4670

a = 20

r = 50

a + r

123-12

11-1

123578*12

1777*2

3.8 %/% 2 # flow division bring a whole number

5 %/% 2

22 %/% 7

22/7     #  the division bring whole number with decimal

125 %% 5  #  show reminder of division

22 %% 7

22/7

2^4

#3.2 ASSIGNMENT OPERATORS  involve(=,<-,<<-,->)

e <<- 50

100 ->> f

#3.3 RELATIONAL OPERATORS involve (>,<,==,!=,>=,=<)

f > e

e>f

e ==f

f != e

f>=e

d=20

g=5

d<=g

#3.4 LOGICAL OPERATOS involve (&,|,!)
# let

 x = TRUE
 
 y = FALSE
 
 x & y
 
 x & x
 
 y & x
 
 y |y
 
 y | x
 
 !y
 
 !x
 
 
 # 3.5 SPECIAL OPERATORS deal with ((:) create the series of numbers in sequence for vectors, (%in%) used to identify if an element belongs to a vector)
 
 p = 10:20
 p
 
 15 %in% p
 
 30 %in% p
 
 
            # 4.DATA TYPES
 #VECTORS
 #LISTS
 #ARRAYS
 #MATRICES
 #FACTORS
 #DATA FRAMES
 
 
       # 01.VECTORS
 
 # CREATING OBJECT V1
 #CREATING VECTORS V2
 #SEQUENCE OF VECTORS
 #REPEATE OF VECTORS
 
 
 V1 = c(1,2,3,4,5,6,7,8,9,10)
 
 V2 = c(1:100)
 print(V2)
 
 v3 = c("juma","ally","daud","paul","phabian")
 print(v3)
 v3 = c("A", "B","C")
 print(v3)
 
 # 0,10,20,30,40,....,1000
 #SEQUENCE FUXN
 
 seq(from=....., to = ....., by= ....)
 
 v4 = seq(from = 0, to = 1000, by =10) # show  less to greater number by difference  of 10
 v4 = seq(0 ,1000, 10)
 print(v4)
 
 # 1000, 990, 980, ..... 20,10,0
 v5 = seq(from = 1000, to =0 , by= -10) #show greater to less number by difference of 10
 print(v5)
 
 #10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 
 #REPEAT FUXN vectors
 v6=  rep(10,times = 15)
 print(v6)
 
 # 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 
 
 v7 = rep(1:5,5)
 print(v7)
 
 # 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4 5 5 5 5 5
 v8 = rep(1:5, each = 5)
 print(v8)
 
 # 10 20 30 40 50 10 20 30 40 50 10 20 30 40 50
 v9 = rep(c(10,20,30,40,50),  3)
 print(v9)
 
 # 10 10 20 20 30 30 40 40 50 50 10 10 20 20 30 30 40 40 50 50 
 v10 = rep(c(10,20,30,40,50), 2,2)
 v10 = rep(c(10,20,30,40,50), times = 2, each =2)
 print(v10)
 
 # 10 10 10 10 10 20 20 20  20 30 30  30 40 40 50
 v11 = rep(c(10,20,30,40,50), times =c(5,4,3,2,1))
 print(v11)
 
 # 10 10 10 20 20 10 10 10 20 20 10 10 10 20 20 10 10 10 20 20
 #let create variable
 n1 = rep(c(10,20), times = c(3,2))
 
 v12= rep(n1,times =4)
 v13 = rep(rep(c(10,20), times = c(3,2)),times =4)
 print(v13)
 
 
 # in case last no is unknown but given length
 v14 = seq(0, by = 10,length=1000)
 print(v14)
 
 #  indexing  vectors/subsetting ( looking position of a certain number)
 v14[918:923]
 v14[c(612,810,991)]
 
 
 
 # XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
 
 
 
      # SUMMARY
 
vtr<- c(1,3,5,11,41,67,23,55,21)
vtr1<- c("hi",'Hellow',"hey")
vtr<-c(1,3,5,11,41,67,23,55,21)
sortedvtr<- sort(vtr)
vtr
sortedvtr<-sort(vtr1)
sortedvtr <- sort(vtr)
vtr[3]
vtr[3:6]
vtr1[2:7]
vtr2<- c(1,3,5,11,41,67,23,55,21)
sortedvtr <- sort(vtr2)
vtr2
vtr2[-1]
vtr2
vtr2[3] <- 15
vtr2
vtr2[11] <- 69
vtr2
list1 <- list("hey",FALSE,54,35L)
list1
list2 <- list("hellow","kneel","R",45,28)
list2
list3 <- merge(list1,list2)
list3
vtr4 <- c(2,6,14,18,22)
vtr5 <- c(5,15,25,45,65,85,105,125)
arr <- array(c(vtr4))
arr
arr5 <- array(c(vtr4,vtr5) ,dim=c(5,5,3))
arr5
vtr6 <- c(2,6,14,18,22)
vtr7 <- c(5,7,9,45,36)
mtr <- matrix(c(vtr6,vtr7),5,5)
mtr
mtr <- matrix(c(vtr6,vtr7),10,15)
mtr
# vector

#   FACTORS ;  is a data type  used to represent categorical(qualitative) data 
# store data in level

vtr8 <- c(3,5,7,11,5,15,11,20,3)
factvtr <- factor(vtr8)
print(factvtr)

vtr21 <- c("A","B","C","E","D","F")
factvtr <- factor(vtr21)
print(factvtr)

grade = factor(c("c","a","d","b"))
print(grade)

#data frame

id <- c(100:105)
name <- c("juma","dann","all","paul","neema","sen")
classstd <- data.frame(id,name)
classstd
marks <- c(80,100,87,70,24,90)
classstd1 <- data.frame(id,name,marks)
classstd1

   # WORKING DIRECTORYs

getwd() #This is used when some one want to know current working directory
getwd()

setwd() #This is used when some one want to set working directory
setwd("C:\\Users\\user\\Desktop\\v1")


#  SESSION D

# CREATING OBJECT V1
#CREATING VECTORS V2
#SEQUENCE OF VECTORS
#REPEATE OF VECTORS


V1 = c(1,2,3,4,5,6,7,8,9,10)

V2 = c(1:100)
print(V2)

v3 = c("juma","ally","daud","paul","phabian")
print(v3)
v3 = c("A", "B","C")
print(v3)

# 0,10,20,30,40,....,1000
     #SEQUENCE FUXN
     
     seq(from=....., to = ....., by= ....)
     
     v4 = seq(from = 0, to = 1000, by =10) # show  les to greater by dif of 10
     v4 = seq(0 ,1000, 10)
     print(v4)
     
     # 1000, 990, 980, ..... 20,10,0
     v5 = seq(from = 1000, to =0 , by= -10) #show greater to les by dif of 10
     print(v5)
     
     #10 10 10 10 10 10 10 10 10 10 10 10 10 10 10 
      #REPEAT FUXN vectors
   v6=  rep(10,times = 15)
   print(v6)
   
   # 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 1 2 3 4 5 
   
   v7 = rep(1:5,5)
   print(v7)
   
   # 1 1 1 1 1 2 2 2 2 2 3 3 3 3 3 4 4 4 4 4 5 5 5 5 5
   v8 = rep(1:5, each = 5)
   print(v8)
   
  # 10 20 30 40 50 10 20 30 40 50 10 20 30 40 50
   v9 = rep(c(10,20,30,40,50),  3)
   print(v9)
   
   # 10 10 20 20 30 30 40 40 50 50 10 10 20 20 30 30 40 40 50 50 
   v10 = rep(c(10,20,30,40,50), 2,2)
   v10 = rep(c(10,20,30,40,50), times = 2, each =2)
   print(v10)
   
  # 10 10 10 10 10 20 20 20  20 30 30  30 40 40 50
   v11 = rep(c(10,20,30,40,50), times =c(5,4,3,2,1))
   print(v11)
   
   # 10 10 10 20 20 10 10 10 20 20 10 10 10 20 20 10 10 10 20 20
    #let create variable
   n1 = rep(c(10,20), times = c(3,2))
   
   v12= rep(n1,times =4)
   v13 = rep(rep(c(10,20), times = c(3,2)),times =4)
   print(v13)
   
   
# in case last no is unknown but given length
   v14 = seq(0, by = 10,length=1000)
   print(v14)
   
   #  indexing  vectors/subsetting ( looking position of a certain number)
   v14[918:923]
   v14[c(612,810,991)]
      
   
      #%%%%%%%%%%%%%%%%%%%%%%%%% MR  MAGOT INDIVICUAL TASK
   # BACHEROL OF DATA SCIENCE (BDTS)
   # MODULE TITLE: DATA ANALYSIS WITH R
   # MODULE CODE: DSU07317
   
   # PRACTICAL ASSIGNMENT
   
   
  #...(a) Months vector
   month_vec <- 1:12
   month_vec
   
   #...(b)Generate harvest data for 10 farmers
   
   #......(i) Base harvest increases by 5% monthly
   
   base_harvest <- 80*(1+0.05)^(months -1)
   base_harvest
   
   #...(ii) Add random variability
   
   set.seed(123)
   noise <- rnorm(12,mean = 0, sd = 10)
   harvest1 <- base_harvest + noise
   harvest1
   
   #....(iii) introduce one outlier manually
   harvest1[6] <- harvest1[6]*2   #for one extreme value of farm
   harvest1
   
   #for 10 farmers
   farmers <- lapply(1:10,function(i){
     h<-80*(1.05)^(months -1) + rnorm(12,0,10)
     h[sample(1:12, 1)] <- h[sample(1:12,1)] *2
     h
   })
   farmers
   
   #..(c) combine into a data frame
   harvest_df <- as.data.frame(do.call(cbind,farmers))
   colnames(harvest_df) <- paste0("farmer_",1:10)
   rownames(harvest_df) <- paste0("month_",1:12)
   harvest_df
   View(harvest_df)
   
   #..(d) Average monthly harvest per farmer & total per month
   Avg_per_farmer <- colMeans(harvest_df)
   total_per_month <- rowSums(harvest_df)
   Avg_per_farmer
   total_per_month
   
   #..(e) identify months where total harvest is below overall monthly average
   overall_Avg <- mean(total_per_month)
   below_Avg_months <-
     names(total_per_month[total_per_month<-overall_Avg])
   below_Avg_months
   
   
   #,,,,, QUESTION 2
   
  #... (a) Education levels for 30 farmers
   set.seed(456)
   
   education <- sample(
     c("None", "Primary", "Secondary", "Tertiary"),
     size = 30,
     replace = TRUE,
     prob = c(0.2, 0.35, 0.3, 0.15)
   )
   print(education)
   
   #...(b) Literacy score (0-100), increasing with education
   
   
   edu_base <- ifelse(
     education == "None", 40,
     ifelse(education == "Primary", 55,
            ifelse(education == "Secondary", 70, 85))
   )
   
   literacy_score <- pmin(pmax(round(edu_base + rnorm(30, 0, 8)), 0), 100)
   
   
   #...(c)  Convert education to an ordered factor
   
   
   education_ord <- factor(
     education,
     levels = c("None", "Primary", "Secondary", "Tertiary"),
     ordered = TRUE
   )
   
   
   
  #...(d) Recode into edu_group
   
   
   edu_group <- factor(
     ifelse(education %in% c("None", "Primary"), "Low",
            ifelse(education == "Secondary", "Medium", "High")),
     levels = c("Low", "Medium", "High"),
     ordered = TRUE
   )
   
   
   #...(e) Average literacy score and variance by group
   
   
   # Combine into data frame
   edu_df <- data.frame(
     education = education_ord,
     edu_group = edu_group,
     literacy_score = literacy_score
   )
   
   # Mean literacy score per group
   avg_literacy <- tapply(edu_df$literacy_score, edu_df$edu_group, mean)
   
   # Variance per group
   var_literacy <- tapply(edu_df$literacy_score, edu_df$edu_group, var)
   
   avg_literacy
   var_literacy
   
   # Group with largest variance
   names(which.max(var_literacy))
   
   
   #********** QUESTION 03
   set.seed(789)   # reproducibility
   
   #..(a) Create vectors from scratch
   
   
   
   # (i) Household IDs
   household_id <- 1:20
   
   # (ii) Harvest (5–25 kg)
   harvest <- round(runif(20, min = 5, max = 25), 1) # 20 is a no of household required
   print(harvest)
   
   # (iii) Irrigation (0/1) – ensure at least 5 households without irrigation
   irrigation <- c(rep(0, 5), sample(c(0, 1), 15, replace = TRUE)) #this mean valued 0 or 1 if no irrigation or if there is irrigation but there must be 5 wihout irrigation
   irrigation <- sample(irrigation)   # shuffle
   print(irrigation) #(0,5) show five hh with no irrigation while(0,1,)15) beti that kaya that remain can be irr or not
   
   # (iv) Household size (2–10)
   hh_size <- sample(2:10, 20, replace = TRUE)
   print(hh_size) #show size of kaya & no peoples in
   
   # (v) Urban (0/1) – more rural households
   urban <- sample(c(0, 1), 20, replace = TRUE, prob = c(0.7, 0.3)) #inachagua 0vijijin 1 mjini  mwisho kaya 20 
   print(urban)
   
   #...(b) combine into a data frame
   
   
   hh_df <- data.frame(
     household_id = household_id,
     harvest = harvest,
     irrigation = irrigation,
     hh_size = hh_size,
     urban = urban
   )
   
   hh_df
   
   #..(c) Create harvest_level using quartiles
   
   
   hh_df$harvest_level <- cut(
     hh_df$harvest,
     breaks = quantile(hh_df$harvest, probs = seq(0, 1, 0.25)),
     include.lowest = TRUE,
     labels = c("Low", "Medium", "High", "Very High")
   )
   
   hh_df
   
   
   #..(d) Identify high-priority household
   
   
   high_priority <- hh_df[
     hh_df$harvest < 10 | (hh_df$irrigation == 0 & hh_df$hh_size > 5),
   ]  # kay za wangalizi mkubwa yawezekan zina harvest n less<10 ,no irr (irr==0) na n 5
   
   high_priority
   
   
   #..(e) Average harvest by urban/rural and by harvest level
   
   
   # Convert urban to factor for clarity
   hh_df$urban <- factor(hh_df$urban, levels = c(0, 1), labels = c("Rural", "Urban"))
   
   # Average harvest per location
   avg_by_location <- tapply(hh_df$harvest, hh_df$urban, mean)
   
   # Average harvest per harvest level
   avg_by_level <- tapply(hh_df$harvest, hh_df$harvest_level, mean)
   
   avg_by_location
   avg_by_level
   
   
   
   #***********QUESTION 04
   
  
   
   #...(a)Create a vector of  product IDs
   
   # Create product IDs
   products <- paste0("P", sprintf("%02d", 1:5))
   products
   
   #..(b) Generate regions and simulate all product-region combinations
   
   
   # Create regions
   regions <- c("North", "South", "East", "West")
   
   # All product-region combinations
   df <- expand.grid(
     product = products,
     region = regions
   )
   
   df
   
   #...(c) Generate sales for each-region pair
   
   #..(i) Base sales differ by product and region
   
   #..(ii) Add random variability
   
   #..(iii) Introduce some zero sales randomly
   
   
   set.seed(123)  # for reproducibility
   
   # Base sales by product
   product_base <- as.numeric(substr(df$product, 2, 3)) * 20
   
   # Base sales by region
   region_base <- ifelse(df$region == "North", 40,
                         ifelse(df$region == "South", 30,
                                ifelse(df$region == "East", 20, 10)))
   
   # Random noise
   random_noise <- rnorm(nrow(df), mean = 0, sd = 10)
   
   # Final sales
   df$sales <- product_base + region_base + random_noise
   
   # Introduce zero sales randomly
   zero_index <- sample(1:nrow(df), size = 3)
   df$sales[zero_index] <- 0
   
   df
   
   
    #...(d) Convert product and region to factors and reorder region by average sales
   
   
   
   # Convert to factors
   df$product <- factor(df$product)
   df$region <- factor(df$region)
   
   # Reorder region by average sales
   avg_sales_region <- tapply(df$sales, df$region, mean)
   
   df$region <- factor(
     df$region,
     levels = names(sort(avg_sales_region, decreasing = TRUE))
   )
   
   df
   
   
   #..(e) Create sales_level factor using quartiles
   
   
   # Create sales level using quartiles
   df$sales_level <- cut(
     df$sales,
     breaks = quantile(df$sales, probs = seq(0, 1, 0.25)),
     include.lowest = TRUE,
     labels = c("Low", "Medium", "High", "Very High")
   )
   
   df
   
   
   
   #..(f)identify products performing well in at least 3 regions 
   
   
   
   # Filter good performance
   good_perf <- df[df$sales_level %in% c("High", "Very High"), ]
   
   # Count regions per product
   region_count <- table(good_perf$product)
   
   # Products performing well in at least 3 regions
   best_products <- names(region_count[region_count >= 3])
   
   # Final data frame
   result <- df[df$product %in% best_products, ]
   
   result
   
   
   
   
   #......DATA MANAGEMENT
   #;;;;;;select()extract values
   
   
   
   
   
   
   
   
   