## Patrick Zhang
## 6/6/23
## Step 2.1 QA

## ------------------------ Background --------------------------- ##
# QA steps for step 2.1
# Use tidyverse package, psych, stringr packages

## ------------------------ Tasks --------------------------- ##
# Check for missing linkids
# Write frequency distributions for categorical and short continuous vars
# Write histograms for long continuous vars

## ------------------------- Questions -------------------------- ##

## ------------------------- High level workflow -------------------------- ##
# Perform QA steps
# Define categorical vs continuous variables, then run through variables through functions

## ------------------------- Start Code -------------------------- ##

## import libraries
# install.packages("dplyr")
# install.packages("psych")
# install.packages("stringr")
# install.packages("ggplot2")

## load libraries
library(dplyr)
library(psych)           ## This is for describe function
library(stringr)         ## This is to pull out birth_year from birth_date
library(ggplot2)         ## This is to create date histogram
library(lubridate)       ## This is to convert date variables

## Define csv location (this will be different for each user)
source_data <- "C:/Users/rvy3/OneDrive - CDC/CDC_Work/CODI_CO_DMI/2.1_QA_PZwork/data/measures_output_dh.csv"

## Import data
dat_raw <- read.csv(source_data) %>%
  # mutate to character variable
  mutate_at(vars(one_of('linkid','site','state', 'zip', 'tract', 'county')), as.character) |> 
  # mutate to date variable
  mutate_at(vars(one_of('measure_date')), as_date)
# Note - if variable does not exist, r returns a warning message "Unknown columns: ..."
# This is okay, everything else ran correctly but r did not find specific variables

## Make sure there are no missing link_ids
dat_miss_linkid <- dat_raw |> 
  filter(is.na(linkid))

dat_miss_linkid

## ---------------------- Define Categorical vs continuous variables ----------------------- ##

## Get colnames
dat_colnames <- colnames(dat_raw)

#### Group the fields into categorical vs continuous ########

###### Cat and cont variable definitions for cohort_tract_comorb_dh_limited.csv ###### 
# ## Categorical vars
# dat_cat <- dat_raw |>
#   select(colnames(dat_raw)[c(2, 4:20)])
# ## Continuous vars
# dat_cont <- dat_raw |>
#   select(yr)
###### Cat and cont variable definitions for cohort_tract_comorb_dh_limited.csv ###### 

###### Cat and cont variable definitions for measures_output_dh.csv ###### 
## Categorical vars
dat_cat <- dat_raw |>
  select(colnames(dat_raw)[c(5)])
## Continuous vars
dat_cont <- dat_raw |>
  select(colnames(dat_raw)[c(2:4)])
###### Cat and cont variable definitions for measures_output_dh.csv ###### 

## --------------- QA functions: Categorical vs continuous variables ----------------------- ##

###### QA categorical variables ###### 

## Make dummy lists
out_describe <- list()
out_table <- list() 
out_proptable <- list()

dat_cat_colnames <- colnames(dat_cat)

## Make for loop
for(i in 1:length(dat_cat_colnames)){
  out_table[[i]] <- table(dat_cat[,i])
  out_proptable[[i]] <- prop.table(table(dat_cat[,i]))
}

## Make function
display_cat_results <- function(varnum){
  display_list <- list()
  display_list[[1]] <- dat_cat_colnames[varnum]
  display_list[[2]] <- out_table[[varnum]]
  display_list[[3]] <- out_proptable[[varnum]]
  return(display_list)
}

## Display results - change cat_varnum to variable you want to see and run display_cat_results
cat_varnum = 1
dat_cat_colnames
display_cat_results(cat_varnum)

# Note - run dat_cat_colnames

###### QA continuous variables ###### 

## Make dummy lists
out_describe <- list()
out_table <- list() 
out_proptable <- list()

dat_cont_colnames <- colnames(dat_cont)

## Display results as bar or histogram
# display_results(1)
# 
# dat1_cont |> 
#   ggplot(aes(x = colnames(dat1_cont)[1])) +
#   geom_freqpoly(binwidth = 1)
# 
# 
# dat1_cont |> 
#   ggplot(aes(x = yr)) +
#   geom_freqpoly(binwidth = 1)

cont_varnum = 3

dat_cont |> 
  ggplot(aes(x = get(names(dat_cont)[cont_varnum]))) +
  geom_bar() + 
  xlab(names(dat_cont)[cont_varnum])
  
dat_cont |> 
  ggplot(aes(x = get(names(dat_cont)[cont_varnum]))) +
  geom_freqpoly(binwidth = 1) + 
  xlab(names(dat_cont)[cont_varnum])

dat_test <- dat_cont[-308535,]

dat_test |> 
  ggplot(aes(x = get(names(dat_test)[cont_varnum]))) +
  geom_freqpoly(binwidth = 1) + 
  xlab(names(dat_test)[cont_varnum])

