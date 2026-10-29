
# Q15: Daily Temperature Analysis

Temperature <- c(28, 29, 31, 30, 32, 34,
                 33, 31, 29, 30)

cat("Temperatures:\n")
print(Temperature)
cat("Highest:", max(Temperature), "\n")
cat("Lowest:", min(Temperature), "\n")
cat("Average:", mean(Temperature), "\n")

plot(1:10, Temperature,
     type = "o", pch = 19,
     main = "Daily Temperatures",
     xlab = "Day", ylab = "Temperature",
     col = "blue")
