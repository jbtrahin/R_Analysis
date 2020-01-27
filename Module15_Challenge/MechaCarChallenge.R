# Importing libraries
library(jsonlite)
library(tidyverse)

# Reading CSVs
mpg_dataset <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
susp_coil_dataset <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)

#1-MPG Regression
# Design a linear model that predicts the mpg of MechaCar prototypes using a number of variables within the MechaCar mpg dataset
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mpg_dataset)
# Generate our statistical metrics summary
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance,data=mpg_dataset))

#2-Suspension Coil Summary
# Create summary table (overall)
summary_statistics_table_overall <- susp_coil_dataset %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI))
# Create summary table (by lot)
summary_statistics_table_by_lot <- susp_coil_dataset %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI), Median_PSI=median(PSI), Var_PSI=var(PSI), Std_Dev_PSI=sd(PSI))

#3-Suspension Coil T-Test by lot
# Filter suspension_coil data by Lot
lot1 <- susp_coil_dataset %>% filter(Manufacturing_Lot=='Lot1')
lot2 <- susp_coil_dataset %>% filter(Manufacturing_Lot=='Lot2')
lot3 <- susp_coil_dataset %>% filter(Manufacturing_Lot=='Lot3')

# Run a one-sample t-test for each lot.
t.test(lot1$PSI, mu=1500)
t.test(lot2$PSI, mu=1500)
t.test(lot3$PSI, mu=1500)








