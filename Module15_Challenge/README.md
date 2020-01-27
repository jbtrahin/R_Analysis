# MechaCar Technical Report

## MPG Regression

To design a model that predicts the MPG of MechaCar, we used multiple linear regression and selected the following continuous data points to include in our model: vehicle length, vehicle weight, spiler angle and ground clearance. We compared MPG to these data points.

Here is our model summary: ![alt text](image.jpg)

Let's look at the contribution of each variables to our model by looking at the individual variable p-values. According to our results, intercept, vehicle length and ground clearance are three variables that are statistically unlikely to provide random amounts of variance to our model, with a Pr(>|t|) value < 0.05. Let's note that when an intercept is statistically significant (1.87x10<sup>-08</sup> in this case), it means there are other variables and factors that contribute to the variation in MPG that have not been included in our model. We can conclude here that there is a relationship between MPG and vehicle length, and between MPG and ground clearance.

From our model, the **r-squared value is 0.7032**, which means that roughly 70% of all MPG predictions will be correct using our model. The **p-value of our analysis is 2.277x10<sup>-11</sup>**, which is much smaller than our assume significance level of 0.05%. We can state that there is sufficient evidence to reject our null hypothesis, which means that the slope of our model is not zero.

The observed r-squared value suggests that our model has a strong positive correlation and we observed earlier that the p-value of the intercept is statistically significant. These results suggest that our model would predict the MPG of MechaCar prototypes accurately.

However, although our multiple linear regression model performs well at predicting our current dataset,the lack of significant variables (2 out of 4) could be an evidence of overfitting.

## Suspension Coil Summary

### Summary Tables

Here is our summary table overall: ![alt text](image.jpg)

Here is our summary table by lot: ![alt text](image.jpg)

The summary tables provide the following findings:
* The mean and the median are very close to each other (around 1500 PSI) for all lots, meaning that each lot dataset has a symmetrical distribution.
* Supensions coils manufactured in Lot 1 and 2 do not have a variance that exceed 100 pounds per inch. We can deduct that the manufacturing data of Lot 1 and 2 meet the specifications of MechaChar.
* Supensions coils manufactured in Lot 3 have a variance that exceeds 100 pounds per inch. We can deduct that the manufacturing data of Lot 3 does not meet the specifications of MechaChar.

### Running a one-sample t-test

We are running a one-sample t-test to determine if there is a statistical difference between
the mean of the sample distribution (lots) and
the mean of the population distribution. We'll use a significance level of 0.05%.

Here our test results by lot:

|     Lot 1      |     Lot 2     |      Lot 3     |
|:-------------: | :-----------: | :------------: |
|![alt text]() | ![alt text]() | ![alt text]()|

Hera are ou findings:
* Lot 1: we observe a p-value of 1. We can conclude that we can't reject the null hypothesis and that the mean of the PSU for Lot 1 is similar to the population mean of 1,500 pounds per inch.
* Lot 2: we observe a p-value of 0.6072. We can conclude that we can't reject the null hypothesis and that the mean of the PSU for Lot 1 is similar to the population mean of 1,500 pounds per inch.
* Lot 3: we observe a p-value of 0.04168. Our p-value is statistically significant. We can conclude that we reject the null hypothesis and that the mean of the PSU for Lot 1 is statistically different to the population mean of 1,500 pounds per inch.

## Comparing Performance of MechaCar Prototype Vehicle To Other Comparable Vehicles.

When looking at the comparison feature of industry-leading automotive information specialist Edmunds.com, we observe that the following data points are commonly used when purchasing a new vehicle:
1. Starting MSRP
2. Fuel Economy
3. Engine Power
4. 5-year Ownership Costs

In order to compare our prototype vehicle to others on the market, we would build a sample of all comparable vehicles on the market.

1. To analyze Average Price Paid, we would do the following:
- Question: Is the mean of our prototype starting MSRP different than the competitors?
- Test to run: two-sample t-test on continuous data.
- H0 : There is no statistical difference between the two observed Starting MSRP means.
- Ha : There is a statistical difference between the two observed Starting MSRP means.
- Data to collect: Starting MSRP in USD for all comparable vehicles in 2019 in the US and for MechaCar prototype.

2. To analyze Fuel Economy, we would do the following:
- Question: Is the mean of our prototype MPG competitive different than the competitors?
- Test to run: two-sample t-test on continuous data.
- H0 : There is no statistical difference between the two observed MPG means.
- Ha : There is a statistical difference between the two observed MPG means.
- Data to collect: MPG estimate for all comparable vehicles in 2019 in the US and for MechaCar prototype.

3. To analyze Engine Power we would do the following:
- Question: Is the mean of our prototype engine horsepower different than the competitors?
- Test to run: two-sample t-test on continuous data.
- H0 : There is no statistical difference between the two observed horsepower means.
- Ha : There is a statistical difference between the two observed horsepower means.
- Data to collect: Horsepower value of all comparable vehicles in 2019 in the US and of MechaCar prototype.

4. To analyze 5-year Ownership Costs, we would do the following:
- Question: How much does each variable incluided in the calculation influence the 5-year Ownership Costs metric?
- Test to run: multiple linear regression using variables like average cost per mile, depreciation, financing, fuel, insurance, maintenance and repairs.
- H0 : The slope of the linear model is zero, or m = 0
- Ha : The slope of the linear model is not zero, or m ≠ 0
- Data to collect: 5-year Ownership Costs and all variable data for all comparable vehicles in 2019 in the US and for MechaCar prototype. 

Addiitonally, if we would like to draw a one-on-one comparaison between our prototype and a specific comnpetitor's model, we could filter our sample for each specific car model and run ANOVA tests instead of two-sample t-tests to see if there is a statistical difference between the distribution means from multiple samples.