df <- read.csv("D:\\Data Sets\\acs2017_census_tract_data.csv", header=TRUE)
#SUMMARY
summary(df)

#Missing Values In Columns
colSums(is.na(df))

#Distribution of total population across census tracts
hist(df$TotalPop, main="Distribution of Total Population", xlab="Population", col="blue")

#Average income per capita per state
aggregate(IncomePerCap ~ State, df, mean, na.rm=TRUE)

#State with the highest median income per capita
library(dplyr)
df %>% group_by(State) %>% summarise(median_income = median(IncomePerCap, na.rm=TRUE)) %>% arrange(desc(median_income))

#Unemployment rate variation across different states
boxplot(Unemployment ~ State, data=df, las=2, main="Unemployment Rate by State", col="red")

# Correlation between income and poverty rate
cor(df$Income, df$Poverty, use="complete.obs")

#Top 5 counties with the highest child poverty rates
df %>% arrange(desc(ChildPoverty)) %>% select(County, State, ChildPoverty) %>% head(5)

#Percentage of people using public transportation for commuting
mean(df$Transit, na.rm=TRUE)

#Average commuting time by state
df %>% group_by(State) %>% summarise(avg_commute = mean(MeanCommute, na.rm=TRUE)) %>% arrange(desc(avg_commute))

#Racial composition (percentage) across census tracts
race_cols <- c("Hispanic", "White", "Black", "Native", "Asian", "Pacific")
colMeans(df[race_cols], na.rm=TRUE)

#Top 5 states with the highest percentage of self-employed workers
df %>% group_by(State) %>% summarise(avg_self_employed = mean(SelfEmployed, na.rm=TRUE)) %>% arrange(desc(avg_self_employed)) %>% head(5)

#Employment rate by sector (Private, Public, Self-Employed)
sector_means <- colMeans(df[c("PrivateWork", "PublicWork", "SelfEmployed")], na.rm=TRUE)
barplot(sector_means, main="Employment Rate by Sector", col=c("blue", "red", "green"))

#Proportion of men to women in the dataset
sum(df$Men, na.rm=TRUE) / sum(df$Women, na.rm=TRUE)

#Household income comparison between urban and rural counties
df$UrbanRural <- ifelse(df$TotalPop > median(df$TotalPop, na.rm=TRUE), "Urban", "Rural")
aggregate(Income ~ UrbanRural, df, mean, na.rm=TRUE)

