library(dplyr)


# Deliverable 1 - Technical Analysis
# Read MechaChar_mpg.csv into data table
mc_mpg_table = read.csv(file="Resources/MechaCar_mpg.csv", check.names=F, stringsAsFactors=F)

# Perform multiple linear regression for predicting mpg, using all variables in mc_mpg data table
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg_table)

# generate multiple linear regression model summary statistics
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mc_mpg_table))

# Read Suspension_Coil.csv into data table
susp_coil_table = read.csv(file="Resources/Suspension_Coil.csv", check.name=F, stringsAsFactors=F)


# Deliverable 2 - Technical Analysis
# Create summary dataframe for mean, median, variance, and standard deviation of susp_coil PSI column
total_summary <- susp_coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI),
                                        Variance=var(PSI), SD=sd(PSI))

# Create summary dataframe for mean, median, variance, and standard deviation of susp_coil PSI column
# grouped by Manufacturing_Lot
lot_summary <- susp_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), 
                                                                             Median=median(PSI),
                                                                             Variance=var(PSI), 
                                                                             sd(PSI))

