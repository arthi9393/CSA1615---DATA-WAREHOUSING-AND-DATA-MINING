
# Q2: Quartiles and Boxplot

x <- c(12, 18, 21, 25, 29, 31, 35, 40, 44, 50)

print(quantile(x))
cat("Q1:", quantile(x, 0.25), "\n")
cat("Q2:", quantile(x, 0.50), "\n")
cat("Q3:", quantile(x, 0.75), "\n")
cat("IQR:", IQR(x), "\n")

boxplot(x,
        main = "Boxplot of Values",
        ylab = "Values",
        col = "lightblue")
