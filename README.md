# MechaCar Statistical Analysis

## Overview

Automotive manufacuring company "'AutosRUs'" is experiencing production issues with their latest prototype, the "MechaCar". We are tasked to review the production data for insights that may help the manufacturing team to help overcome their blocked progress in the MechaCar prototype manufacturing process.

Key Objectives:
- Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
- Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
- Run t-tests to determine if the manufacturing lots are statistically different from the mean population
- Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.

Let's dive in.

## Linear Regression to Predict MPG

Below is the output of the linear regression model, created in R, to predict the MPG variable in the MechaCar MPG dataset.

#### __Linear Regression Output__
<img src="Resources/Images/lin_reg_summary.png" alt="lm" width=500/>

- The following variables' coefficients provide a non-random amount of of variance to the MPG values in the dataset, as shown in our multiple linear regression model results above. These variables are statistically significant because they are below our set siginficance level of p = 0.05.
    - Intercept (p = 5.08e-08)
    - vehicle_length (p = 2.60e-12) 
    - ground_clearance (p = 5.21e-18)
- The slope of the linear model is not considered to be zero.
    - There variation in the data set, which shows that the data output is not constant (slope of zero). This is further evidenced by the results of our linear regression model showing all non-zero coefficients/slopes (under 'Estimate' column in the output displayed above) for each variable in the dataset.
- The current linear model is not sufficient to predict the MPG of MechaChar prototypes effectively.
    - While, the R-squared value (~0.71) and the Adjusted R-squared value (~0.68) are promising in indicating a decent fit of our model to explain the variability in the data, this may not be sufficient considering other factors.
    - Since our Intercept variable was considered to be statistically significant, this may mean that there are other variables not included in our data that have more significance to the MPG of the MechaCar prototypes. With this consideration our model may be overfitting predictions to the variables in the current dataset.
    - We may improve our model by iteratively selecting features for the linear model, rather than including all features for the predicition model. By doing a correlation analysis, we might discover which variables do not have a strong enough relationship to MPG and should be omitted to improve the model performance.  





## Summary Statistics on Suspension Coils

Below are tables for the summary statistics on the prototypes' suspension coils. The 'Total Summary' table represents the statistics for the dataset as a whole. The 'Lot Summary table represents the statistics for each manufacturing lot separately.

#### __Total Summary__
<img src= "Resources/Images/total_summary.png" alt="total_summary" width=500> <br>

#### __Lot Summary__
<img src= "Resources/Images/lot_summary.png" alt="total_summary" width=500> <br>

- The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.
    - The current manufacturing data shows that this requirement is met when assessing all manufacturing lots in total.
    - The current manufacturing data shows that this requirement is met for Lots 1 & 2 individually.
        - The variance of PSI data in Lot 1 is ~0.98 PSI, as shown in the 'Lot Summary' table.
        - The variance of PSI data in Lot 2 is ~7.47 PSI, as shown in the 'Lot Summary' table.
    - The current manufacturing data shows that this requirement is __NOT__ met for __Lot 3__.
        - The variance of PSI data in Lot 3 is ~170.29 PSI, as shown in the 'Lot Summary' table. This value exceeds the 100 PSI variance limit requirement.




## T-Tests on Suspension Coils

Below are the results of t-tests performed to determine if PSI across all manufacturing lots is statistically different from the population mean, as well as if PSI for each manufacturing lot individually is statistically different from the population mean.

_population mean = 1,500 pounds per square inch (PSI)_

T-test Hypothesis:
- H<sub>0</sub> : There __is no statistical difference__ between the observed sample mean and its presumed population mean.
- H<sub>a</sub> : There __is a statistical difference__ between the observed sample mean and its presumed population mean.

#### __T-Test: All Lots Mean PSI vs. Population Mean PSI__
<img src= "Resources/Images/all_lots_t-test.png" alt="total_summary" width=500> <br>

- The mean PSI across all manufacturing lots is 1498.78 PSI
- When performing a t-test to compare this sample mean to the population mean we get a p-value of ~0.06.
- Using a significance level of 0.05, we do not have sufficient evidence to reject the null hypothesis (H<sub>0</sub>)
- The two means tested are statistically similar for the manufacturing lots, when included together.

#### __T-Test: Lot 1 Mean PSI vs. Population Mean PSI__
<img src= "Resources/Images/lot1_t-test.png" alt="total_summary" width=500> <br>

- The mean PSI across manufacturing 'Lot 1' is 1500 PSI
- When performing a t-test to compare this sample mean to the population mean we get a p-value of 1.00.
- Using a significance level of 0.05, we do not have sufficient evidence to reject the null hypothesis (H<sub>0</sub>)
- The two means tested are statistically similar. Further, with a p-value of 1.00, we may also conclude the two means are statistically identical/equivalent for __Lot 1__.

#### __T-Test: Lot 2 Mean PSI vs. Population Mean PSI__
<img src= "Resources/Images/lot2_t-test.png" alt="total_summary" width=500> <br>

- The mean PSI across manufacturing 'Lot 2' is 1500.20 PSI
- When performing a t-test to compare this sample mean to the population mean we get a p-value of ~0.61.
- Using a significance level of 0.05, we do not have sufficient evidence to reject the null hypothesis (H<sub>0</sub>)
- The two means tested are statistically similar for __Lot 2__.

#### __T-Test: Lot 3 Mean PSI vs. Population Mean PSI__
<img src= "Resources/Images/lot3_t-test.png" alt="total_summary" width=500> <br>

- The mean PSI across manufacturing 'Lot 3' is 1496.14 PSI
- When performing a t-test to compare this sample mean to the population mean we get a p-value of ~0.04.
- Using a significance level of 0.05, we have sufficient evidence to reject the null hypothesis (H<sub>0</sub>).
- The two means tested are __NOT__ statistically similar for __Lot 3__.




## Study Design: MechaCar vs. Competition

In order to compare the performance of the MechaCar vehicles against the performance of vehicles from other manufacturers, we have created a study design for statistical testing (detailed below).

For this study design we will focus on measuring the Combined MPG (Miles per Gallon) metric of the MechaCar and cars of the same type from competing manufacturers. Combined MPG is the weighted average of City and Highway MPG values that is calculated by weighting the City value by 55% and the Highway value by 45% (as defined by the United States Environmental Protection Agency). We will perform statistical testing on this metric for the MechaCar vehicles and competing vehicles, as mentioned.

Our null and alternative hypothesis will be stated as follows.

- H<sub>0</sub> : The observed MechaCar prototypes Combined MPG sample mean __is equal to__ the observed competitors' cars Combined MPG sample mean.
- H<sub>a</sub> : The observed MechaCar prototypes Combined MPG sample mean __is lesser than__ the observed competitors' cars Combined MPG sample mean.

We will perform a One-Tailed Two-Sample t-Test to find if there is a statistical difference between the distribution means of the two samples of MechaCar Combined MPG and competing cars Combined MPG, where MechaCar Combined MPG mean is less than the competing cars' mean. We will do this to determine if the MechaCar will be more fuel efficient by the Combined MPG metric than the mean of the industry's competitors' cars Combined MPG's, or not. This will allow us to understand how the MechaCar performs in fuel efficency compared to the industry standards across similar vehicle types. This would be useful to understand, in conveying the value of the MechaCar's future performance in the marketplace, as consumers seek more fuel efficient cars in the face of rising fuel costs and increasing regulation to promote environment protection.

The data needed to run this test will include the calculated Combined MPG across the sample of at least 20 MechaCar prototypes, as well as the advertised Combine MPG figures of at least 20 similar industry competitors' cars on the market. After compiling these observations into a dataset, separable by two observed sample distributions ('MechaCar' and 'All Other Manufacturers'), we may proceed with our proposed study design and statistical analysis.