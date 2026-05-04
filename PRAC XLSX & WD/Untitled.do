***TASK GROUP TEST 02
***GROUP NO 35
***MODULE NAME :STATTISTICAL INFERENCE
***MODULE CODE :
***MODULE INSTRUCTURE: OMBEN E. KALUSE


*%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 

*STEP 0: Open STATA and load the data
webuse bplong, clear

*check variables
describe
***%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% QUESTION 1
*Recode variables "when" into "Marital_status"
*create new variables with categories:Married and Not Married

**step 1: check values of "when"
tab when

**step 02: create new variables
generate Marital_status = .

**step 3: Recode values

replace Marital_status = 0 if when == 1
replace Marital_status = 1 if when == 2

***step 4: Add labels in order to make output readable
label define marital_lbl 0 "Not Married" 1 "Married"
label values Marital_status marital_lbl

***step 5: verify result
tab Marital_status


**%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% QUESTION 2
*Find effect of sex ,agegrp and Marital_status on blood pressure .
*we use Multiple Linear Regression

**step1: Run regression
regress bp i.sex i.agegrp i.Marital_status

**step2: Model fit interpretation (95% Confidence level)
Prob > F = 0.000
0.000 < 0.05


***conclusion Model is statistically significant   and  Variable affect blood pressure

**step3:Interpret each predictor
P-value < 0.05 → Significant
P-value > 0.05 → Not Significant


**At 95% confidence level, sex, age group and marital status significantly affect blood pressure since their p-values are less than 0.05. The model is statistically significant (Prob > F = 0.000). Older individuals, males and married persons tend to have higher blood pressure.


**%%%%%%%%%%%%%%%%%%%%%%%%%%%%% QUESTION 3 is blood pressure different across age groups?

oneway bp agegrp