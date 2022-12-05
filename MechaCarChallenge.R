library(dplyr)

# Read MechaChar_mpg.csv into data table
mc_mpg_table = read.csv(file="Resources/MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

# Perform multiple linear regression for predicting mpg, using all variables in mc_mpg data table
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg_table)

# generate multiple linear regression model summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg_table))

