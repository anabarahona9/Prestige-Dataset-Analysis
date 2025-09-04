# Multiple linear regression analysis on the Prestige Dataset (R) 

## Introduction
The main purpose of this project is to perform multiple regression analysis using the Prestige Dataset in R. The goal is to understand how several factors, such as income and education, influence occupational prestige. 

## Dataset
Source: car package in R
Observation: 102
Variables: 6 (5 quantitative, 1 categorical)
## Methodology 

### Libraries: 
R
Library(car)
Library(psych)

### Data exploration:
I conducted summary statistics and visual analysis to understand the distribution and relation between variables. The exploration includes histograms, bar charts, boxplots, a correlation matrix, and a scatter plot.  

### Model: I tested four different multiple regression models with various sets of independent variables to predict occupational prestige. Among them, the first model proved to be the most accurate. 
Adjusted R²: 0.8389 (higher than the other three models), indicating that the selected variables explain a significant amount of variability in the dependent variable.
Residual standard error: 6.709: (lowest than the others) showing the best fit.

### Results: the results suggest that the variables included in the first model are the most relevant for predicting prestige.

## Conclusion 
Prestige is strongly influenced by education and income, both of which are statistically significant (p-value < 0.05). This indicates that higher levels of education and higher income are associated with greater prestige. 




