## Original Author: Patrick Zhang
## Modified By: Ken Scott
## Last Modified: 10/4/23
## QA for Use Case 2.1 Step 3
## Version 1

## ------------------------ Background --------------------------- ##
# QA steps for Use Case 2.1 Step 3
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

## Install missing packages
list.of.packages <- c("dplyr", "psych", "stringr", "ggplot2", "lubridate")
new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages)

## load libraries
library(dplyr)
library(psych)           ## This is for describe function
library(stringr)         ## This is to pull out birth_year from birth_date
library(ggplot2)         ## This is to create date histogram
library(lubridate)       ## This is to convert date variables

## Define source data directory (this will be different for each user)
source_data_dir <- "C:/Users/snx4/Documents/r_projects/CODI/"

## Define 1 source data csv location
source_data_result <- paste0(source_data_dir, "step_3_result_dh.csv")

############################### Define Functions for cat vs cont variables ######################

## Display Categorical Results function
display_cat_results <- function(varnum){
  display_list <- list()
  display_list[[1]] <- dat_cat_colnames[varnum]
  display_list[[2]] <- out_table[[varnum]]
  display_list[[3]] <- out_proptable[[varnum]]
  return(display_list)
}

############################### Dataset: step_3_result_dh.csv ######################

## Import comorb data
dat_result_raw <- read.csv(source_data_result) %>%
  # mutate to character variable
  mutate_at(vars(one_of('linkid','sex','pmca', 'pat_pref_language_spoken', 'race', 'hispanic',
                        'insurance', 'in_study_cohort', 'index_site_flag', 
                        'acanthosis_nigricans',
                        'adhd',
                        'anxiety',
                        'asthma',
                        'autism',
                        'depression',
                        'diabetes',
                        'eating_disorders',
                        'hyperlipidemia',
                        'hypertension',
                        'NAFLD',
                        'Obstructive_sleep_apnea',
                        'PCOS'
                        )), as.character) |> 
  mutate_at(vars(one_of('ageyrs', 'bmi', 'bmi_percent_of_p95')), as.numeric)

## Make sure there are no missing link_ids
dat_miss_linkid <- dat_result_raw |> 
  filter(is.na(linkid))

dat_miss_linkid
# QA - should be 0

## ---------------------- Define Categorical vs continuous variables ----------------------- ##

## Get colnames
dat_colnames <- colnames(dat_result_raw)

## Categorical vars
dat_cat <- dat_result_raw |>
  select(colnames(dat_result_raw)[c(3:4, 7:25)])
## Continuous vars
dat_cont <- dat_result_raw |>
  select(colnames(dat_result_raw)[c(2, 5:6)])

## --------------- QA Categorical vs continuous ----------------------- ##

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

## Display results - change cat_varnum to variable you want to see and run display_cat_results
dat_cat_colnames
cat_varnum = 7
display_cat_results(cat_varnum)

###### QA continuous variables ###### 

## Describe latitude and longitude
describe(dat_cont$ageyrs)
describe(dat_cont$bmi)
describe(dat_cont$bmi_percent_of_p95)

## Number of NAs
sum(is.na(dat_cont$ageyrs))
sum(is.na(dat_cont$bmi))
sum(is.na(dat_cont$bmi_percent_of_p95))


## Display results as bar or line
dat_cont_colnames
cont_varnum = 2

## Plot 1 - bar
dat_cont |>
  ggplot(aes(x = get(names(dat_cont)[cont_varnum]))) +
  geom_bar() +
  xlab(names(dat_cont)[cont_varnum])

## Plot 2 - line
dat_cont |>
  ggplot(aes(x = get(names(dat_cont)[cont_varnum]))) +
  geom_freqpoly(binwidth = 1) +
  xlab(names(dat_cont)[cont_varnum])
