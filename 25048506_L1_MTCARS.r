# Load dataset
data(mtcars)

# Display the first 10 rows
head(mtcars, 10)

# Display summary statistics
summary(mtcars)

# Calculate metrics
cat("\n")
mean_mpg <- mean(mtcars$mpg)
median_mpg <- median(mtcars$mpg)
mean_hp <- mean(mtcars$hp)
mean_wt <- mean(mtcars$wt)

# Display results
cat("Mean MPG:", mean_mpg, "\n")
cat("Median MPG:", median_mpg, "\n")
cat("Mean Horsepower:", mean_hp, "\n")
cat("Mean Weight:", mean_wt, "\n")

# Calculate dispersion
sd_hp <- sd(mtcars$hp)
var_mpg <- var(mtcars$mpg)
range_wt <- range(mtcars$wt)

# Display results
cat("\n")
cat("Standard Deviation of Horsepower:", sd_hp, "\n")
cat("Variance of MPG:", var_mpg, "\n")
cat("Range of Weight:", range_wt[1], "to", range_wt[2], "\n")

cat("\n")
# Create histogram for MPG
hist(mtcars$mpg, 
     main = "Histogram of Miles Per Gallon (MPG)", 
     xlab = "Miles Per Gallon", 
     col = "steelblue", 
     border = "white")