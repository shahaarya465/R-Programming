df <- data.frame(
  ID = c(1, 2, 3, 4),
  Name = c("Alice", "Bob", "Charlie", "Diana"),
  Age = c(25, 30, 35, 40),
  Passed = c(TRUE, TRUE, FALSE, TRUE)
)
print(df)

df$Name

df[1, ]        # First row
df[, 2]        # Second column
df[1, 2]       # First row, second column

df$Grade <- c("A", "B", "C", "A")  # Add a new column
print(df)

# Filter rows where Age > 30
subset_df <- df[df$Age > 30, ]
print(subset_df)

df$Age[2] <- 32  # Update Age for the second row
print(df)

df$Grade <- NULL
print(df)

df <- df[-2, ]  # Remove the second row
print(df)

summary(df)  # Provides a summary of each column

# Another DataFrame
df2 <- data.frame(
  ID = c(5, 6),
  Name = c("Eve", "Frank"),
  Age = c(28, 33),
  Passed = c(TRUE, FALSE)
)

# Combine by rows
df_combined <- rbind(df, df2)
print(df_combined)