
# Q14: Quartiles and Interquartile Range

x <- c(8, 12, 14, 17, 19, 22,
       24, 27, 30, 35, 39, 44)

cat("Q1:", quantile(x, 0.25), "\n")
cat("Q2 (Median):", quantile(x, 0.50), "\n")
cat("Q3:", quantile(x, 0.75), "\n")
cat("IQR:", IQR(x), "\n")

boxplot(x, main = "Boxplot of Data",
        ylab = "Values", col = "lightblue")
