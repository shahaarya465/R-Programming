library(dplyr)
library(ggplot2)

df <- read.csv("D:\\B.Tech\\4th Sem\\R Programming\\Datasets\\sales_data.csv")

summary(df)

df$Sale_Date <- as.Date(df$Sale_Date, format="%Y-%m-%d")

colSums(is.na(df))

ggplot(df, aes(x=Sales_Amount)) +
  geom_histogram(fill="purple",color="black",bins=40, alpha=0.7) +
  theme_minimal() +
  labs(title="Distribution of Sales Amount", x="Sales Amount", y="Count")

ggplot(df, aes(x=Region, y=Sales_Amount, fill=Region)) +
  geom_boxplot() +
  theme_minimal() +
  labs(title="Sales Amount by Region", x="Region", y="Sales Amount")

ggplot(df, aes(x=Sales_Rep, y=Sales_Amount, fill=Sales_Rep)) +
  geom_bar(stat="identity") +
  theme_minimal() +
  labs(title="Sales Amount by Sales Representative", x="Sales Representative", y="Sales Amount") +
  theme(axis.text.x = element_text(angle=45, hjust=1))

print("\nConclusion: The dataset shows variation in sales across different regions and sales 
    representatives. Sales distribution is skewed, and some regions or reps perform 
    significantly better than others. Further analysis can explore factors influencing these 
    trends.")
