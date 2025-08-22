# Load necessary library
library(ggplot2)

# Load the dataset
df <- read.csv("D:\\Data Sets\\acs2017_census_tract_data.csv",header=TRUE)

# Check the structure of the dataset
print(str(df))

# Get summary statistics
print(summary(df))

# Find the number of missing values in each column
print(colSums(is.na(df)))


#1 Filter data for California
california_data <- subset(df, State == "California")
print(head(california_data))


#2 Find mean and median population of all census tracts
mean_population <- mean(df$TotalPop, na.rm = TRUE)
median_population <- median(df$TotalPop, na.rm = TRUE)
print(paste("Mean Population:", mean_population))
print(paste("Median Population:", median_population))



# 3. Count the number of unique states in the dataset
num_states <- length(unique(df.State))
print(paste("Number of unique states:", num_states))

# 4. Identify the census tract with the highest unemployment rate
highest_unemployment <- df[which.max(df$UnemploymentRate), ]
print(highest_unemployment)

# 5. Identify the census tract with the lowest median household income
lowest_income <- df[which.min(df$MedianHouseholdIncome), ]
print(lowest_income)

# 6. Compute the standard deviation of the total population
std_dev_population <- sd(df$TotalPop, na.rm = TRUE)
print(paste("Standard Deviation of Population:", std_dev_population))

# 7. Determine the proportion of the population below poverty level
poverty_proportion <- sum(df$PovertyRate * df$TotalPop, na.rm = TRUE) / sum(df$TotalPop, na.rm = TRUE)
print(paste("Proportion of population below poverty level:", poverty_proportion))


# 8. Identify the census tract with the lowest unemployment rate
lowest_unemployment <- df[which.min(df$UnemploymentRate), ]
print(lowest_unemployment)

# 9. Compute the median age of the population
median_age <- median(df$MedianAge, na.rm = TRUE)
print(paste("Median Age:", median_age))

# 10. Plot a boxplot of median household income by state
boxplot(df$MedianHouseholdIncome ~ df$State, main = "Median Household Income by State", xlab = "State", ylab = "Income", las=2)

# 11. Compute the mean unemployment rate by state
state_unemployment <- aggregate(UnemploymentRate ~ State, df, mean, na.rm = TRUE)
print(head(state_unemployment))

# 12. Find the correlation between median household income and total population
income_pop_correlation <- cor(df$MedianHouseholdIncome, df$TotalPop, use = "complete.obs")
print(paste("Correlation between Median Household Income and Total Population:", income_pop_correlation))

# 13. Identify the census tract with the lowest poverty rate
lowest_poverty <- df[which.min(df$PovertyRate), ]
print(lowest_poverty)

# 14. Compute the variance of median household income
var_income <- var(df$MedianHouseholdIncome, na.rm = TRUE)
print(paste("Variance of Median Household Income:", var_income))

# 16. Identify the census tract with the highest total population
highest_population <- df[which.max(df$TotalPop), ]
print(highest_population)

# 17. Find the percentage of population employed
employment_rate <- 100 - df$UnemploymentRate
print(head(employment_rate))

# 18. Compute the mean poverty rate across all census tracts
mean_poverty <- mean(df$PovertyRate, na.rm = TRUE)
print(paste("Mean Poverty Rate:", mean_poverty))

# 19. Generate a histogram of unemployment rates
hist(df$UnemploymentRate, main = "Histogram of Unemployment Rate", xlab = "Unemployment Rate", col = "red", border = "black")

# 20. Compute the interquartile range (IQR) for median household income
iqr_income <- IQR(df$MedianHouseholdIncome, na.rm = TRUE)
print(paste("Interquartile Range of Median Household Income:", iqr_income))

