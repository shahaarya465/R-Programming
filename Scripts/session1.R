Dataset <- read.csv("D:/Data Sets/CAR DETAILS FROM CAR DEKHO.csv", header=TRUE)
head(Dataset, 5)
View(Dataset)
library(tidyverse)
#Getting the dimension of the dataset
dim(Dataset)

#structure of dataset
str(Dataset)

#Checking nulls in the dataset
colSums(is.na(Dataset))
#Therefore, our dataset is not having any null values

#Summary of dataset
summary(Dataset)

#Operations
#Subsetting year
year = Dataset$year
head(year)

typeof(year)

#Measures of central tendency
quantile(year)
median(year)
mode(year)

#Subsetting numeric columns
num_cols=Dataset[, c(2,3,4)]
head(num_cols)

#Calculate the mean of each column in the dataset
#1.Mean
print("Mean")
print(apply(num_cols,2,mean))

#2.Median
print("Median")
print(apply(num_cols,2,median))

#3.Mode
print("Mode")
print(apply(num_cols,2,mode))

#4.Quantile
print("Quantile")
print(apply(num_cols,2,quantile))

#unique values of year
year_unq=unique(year)
year_unq

#value counts of year
yr_freq=table(year)
yr_freq

owner=Dataset$owner
head(owner)
o_u=unique(owner)
o_u
o_f=table(owner)
o_f

barplot(o_f,xlab='owners',ylab='Count',main="Ownership")
legend("topright",as.character(sort(o_u)))

#Selecting cols
selected_cols <- Dataset[, c(1,5,6,7,8)]

#finding unique
unq_vals <- sapply(selected_cols,function(col) unique(col))
print(unq_vals)

#finding value counts
value_counts <- sapply(selected_cols,function(col) table(col))
sorted_val_cnts <-lapply(value_counts,function(v_c) sort(head(v_c),decreasing = TRUE))
print(sorted_val_cnts)

library(dplyr)
#group data by year and calculating the average fuel
yearly_avg<-Dataset%>%
  group_by(year)%>%  
  summarise(avg=mean(selling_price))  
yearly_avg

#colnames
lables<-colnames(selected_cols)

#barplot
for(i in 1:length(sorted_val_cnts)){
  barplot(sorted_val_cnts[[i]], main=labels[i],xlab = 'Categories',ylab = 'Count')
}

