csv_content <- "Product_ID,Product_Name,Category,Units_Sold,Revenue,Profit
101,Laptop,Electronics,15,15000,3000
102,Mouse,Accessories,50,1000,400
103,Keyboard,Accessories,40,2000,800
104,Monitor,Electronics,20,4000,1000
105,Headphones,Accessories,35,1750,500
106,Webcam,Electronics,25,1250,300
107,USB Cable,Accessories,100,500,150
108,Printer,Electronics,10,2500,600
109,Desk Lamp,Furniture,30,900,300
110,Tablet,Electronics,18,5400,1200"

# 2. Read the string as if it were a CSV file
sales_data <- read.csv(textConnection(csv_content))

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