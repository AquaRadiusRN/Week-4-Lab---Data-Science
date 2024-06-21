# Get the current working directory 
getwd() 

# List all files in the current working directory 
list.files() 

# Read the 'Churn_Train.csv' file into a data frame named 'churn' with headers 
churn = read.csv("Churn_Train.csv", header=TRUE) 

# View the 'churn' data frame in a tabular format 
View(churn) 

# The 'churn' dataset is now loaded and ready for exploratory data analysis (EDA).

# Load the libraries 
library(tidyverse) 
library(dplyr) 
library(dlookr) 
        
# Calculate descriptive statistics 
descriptive_stats <- describe(churn) 
print(descriptive_stats) 

# Test of normality 
normality_test <- normality(churn) 
print(normality_test)

# Visualization of normality 
plot_normality(churn)

# Calculation of correlation coefficient using correlate() 
correlation_matrix <- correlate(churn) 
print(correlation_matrix)

# Visualization of the correlation matrix using plot.correlate() 
plot.correlate(correlation_matrix) 

#Performing EDA based on target variable
categ <- target_by(data,Category) 

#Showing the relationship between the target variable and the predictor
cat_num <- relate(categ, Sales) 
cat_num 
summary(cat_num) 

#Plotting the class object
plot(cat_num) 

# Grouping data by Internet service 
categ <- target_by(churn, Internet.Service) 

# Analyzing relationship between tenure and churn 
cat_num <- relate(categ, Tenure) 

# Summarizing relationship 
summary(cat_num) 

# Visualizing relationship 
plot(cat_num)

# Assuming 'churn' is your dataset and 'PredictorVariable' is your 
categorical predictor variable 
install.packages('vcd') 

# Load necessary library 
library(vcd) 

# Create mosaic plot 
mosaic(Internet.Service ~ Gender, data = churn)

#Automated Report
# Create dynamic EDA report 
eda_web_report(churn)

# Create static EDA report 
eda_paged_report(churn) 