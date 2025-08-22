Dataset <- read.csv("D:\\Data Sets\\acs2017_census_tract_data.csv", header=TRUE)
head(Dataset, 5)
View(Dataset)

dim(Dataset)

library(tidyverse)
library(ggplot2)

# Check the structure of the dataset
print(str(Dataset))

# Get summary statistics
print(summary(Dataset))

# Find the number of missing values in each column
print(colSums(is.na(Dataset)))


#1 Filter data for California
california_data <- subset(Dataset, State == "California")
print(head(california_data))


#2 Find mean and median population of all census tracts
mean_population <- mean(Dataset$TotalPop, na.rm = TRUE)
median_population <- median(Dataset$TotalPop, na.rm = TRUE)
print(paste("Mean Population:", mean_population))
print(paste("Median Population:", median_population))



# 3. Count the number of unique states in the dataset
num_states <- length(unique(Dataset.State))
print(paste("Number of unique states:", num_states))

# 4. Identify the census tract with the highest unemployment rate
highest_unemployment <- Dataset[which.max(Dataset$UnemploymentRate), ]
print(highest_unemployment)

# 5. Identify the census tract with the lowest median household income
lowest_income <- Dataset[which.min(Dataset$MedianHouseholdIncome), ]
print(lowest_income)

# 6. Compute the standard deviation of the total population
std_dev_population <- sd(Dataset$TotalPop, na.rm = TRUE)
print(paste("Standard Deviation of Population:", std_dev_population))

# 7. Determine the proportion of the population below poverty level
poverty_proportion <- sum(Dataset$PovertyRate * Dataset$TotalPop, na.rm = TRUE) / sum(Dataset$TotalPop, na.rm = TRUE)
print(paste("Proportion of population below poverty level:", poverty_proportion))


# 8. Identify the census tract with the lowest unemployment rate
lowest_unemployment <- Dataset[which.min(Dataset$UnemploymentRate), ]
print(lowest_unemployment)

# 9. Compute the median age of the population
median_age <- median(Dataset$MedianAge, na.rm = TRUE)
print(paste("Median Age:", median_age))

# 10. Plot a boxplot of median household income by state
boxplot(Dataset$MedianHouseholdIncome ~ Dataset$State, main = "Median Household Income by State", xlab = "State", ylab = "Income", las=2)

# 11. Compute the mean unemployment rate by state
state_unemployment <- aggregate(UnemploymentRate ~ State, Dataset, mean, na.rm = TRUE)
print(head(state_unemployment))

# 12. Find the correlation between median household income and total population
income_pop_correlation <- cor(Dataset$MedianHouseholdIncome, Dataset$TotalPop, use = "complete.obs")
print(paste("Correlation between Median Household Income and Total Population:", income_pop_correlation))

# 13. Identify the census tract with the lowest poverty rate
lowest_poverty <- Dataset[which.min(Dataset$PovertyRate), ]
print(lowest_poverty)

# 14. Compute the variance of median household income
var_income <- var(Dataset$MedianHouseholdIncome, na.rm = TRUE)
print(paste("Variance of Median Household Income:", var_income))

# 16. Identify the census tract with the highest total population
highest_population <- Dataset[which.max(Dataset$TotalPop), ]
print(highest_population)

# 17. Find the percentage of population employed
employment_rate <- 100 - Dataset$UnemploymentRate
print(head(employment_rate))

# 18. Compute the mean poverty rate across all census tracts
mean_poverty <- mean(Dataset$PovertyRate, na.rm = TRUE)
print(paste("Mean Poverty Rate:", mean_poverty))

# 19. Generate a histogram of unemployment rates
hist(Dataset$UnemploymentRate, main = "Histogram of Unemployment Rate", xlab = "Unemployment Rate", col = "red", border = "black")

# 20. Compute the interquartile range (IQR) for median household income
iqr_income <- IQR(Dataset$MedianHouseholdIncome, na.rm = TRUE)
print(paste("Interquartile Range of Median Household Income:", iqr_income))

