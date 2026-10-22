
# Q10: Five-Number Summary and Outliers

x <- c(10, 12, 14, 15, 16, 18, 19, 20,
       21, 22, 24, 25, 27, 30, 75)

five_number <- fivenum(x)

names(five_number) <- c(
  "Minimum", "Q1", "Median", "Q3", "Maximum"
)

cat("Five-Number Summary:\n")
print(five_number)

q1 <- quantile(x, 0.25)
q3 <- quantile(x, 0.75)
iqr_value <- IQR(x)

lower <- q1 - 1.5 * iqr_value
upper <- q3 + 1.5 * iqr_value

outliers <- x[x < lower | x > upper]

cat("IQR:", iqr_value, "\n")
cat("Lower Bound:", lower, "\n")
cat("Upper Bound:", upper, "\n")
cat("Outliers:\n")
print(outliers)

boxplot(x,
        main = "Boxplot with Outliers",
        ylab = "Observations",
        col = "lightyellow")
