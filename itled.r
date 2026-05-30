# Creating the dataset directly in R
sales_data <- data.frame(
  Product_ID = 101:110,
  Product_Name = c("Laptop", "Mouse", "Keyboard", "Monitor", "Headphones", 
                   "Webcam", "USB Cable", "Printer", "Desk Lamp", "Tablet"),
  Category = c("Electronics", "Accessories", "Accessories", "Electronics", "Accessories", 
               "Electronics", "Accessories", "Electronics", "Furniture", "Electronics"),
  Units_Sold = c(15, 50, 40, 20, 35, 25, 100, 10, 30, 18),
  Revenue = c(15000, 1000, 2000, 4000, 1750, 1250, 500, 2500, 900, 5400),
  Profit = c(3000, 400, 800, 1000, 500, 300, 150, 600, 300, 1200)
)

# Verify the data
head(sales_data)
str(sales_data)

# Summary statistics for all numerical variables
summary(sales_data[, c("Units_Sold", "Revenue", "Profit")])

# Calculating specific metrics for Revenue as an example
mean_rev <- mean(sales_data$Revenue)
median_rev <- median(sales_data$Revenue)
min_rev <- min(sales_data$Revenue)
max_rev <- max(sales_data$Revenue)
quartiles_rev <- quantile(sales_data$Revenue)

# Creating histograms
hist(sales_data$Revenue, main="Distribution of Revenue", xlab="Revenue", col="skyblue")
hist(sales_data$Profit, main="Distribution of Profit", xlab="Profit", col="salmon")

# Calculate Variance, Standard Deviation, and Range for Profit
var_profit <- var(sales_data$Profit)
sd_profit <- sd(sales_data$Profit)
range_profit <- range(sales_data$Profit)

# Display results
cat("Variance:", var_profit, "\n")
cat("Standard Deviation:", sd_profit, "\n")
cat("Range:", range_profit[1], "to", range_profit[2], "\n")