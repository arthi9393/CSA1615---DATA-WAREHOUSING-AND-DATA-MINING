
# Q9: Monthly Sales Analysis

months <- month.abb

sales <- c(
  12000, 15000, 13500, 18000,
  21000, 19500, 23000, 25000,
  22000, 28000, 30000, 35000
)

cumulative_sales <- cumsum(sales)

percentage <- (sales / sum(sales)) * 100

result <- data.frame(
  Month = months,
  Sales = sales,
  CumulativeSales = cumulative_sales,
  Percentage = round(percentage, 2)
)

print(result)

max_month <- which.max(sales)

cat("Total Sales:", sum(sales), "\n")
cat("Maximum Sales Month:", months[max_month], "\n")
cat("Maximum Sales:", sales[max_month], "\n")
