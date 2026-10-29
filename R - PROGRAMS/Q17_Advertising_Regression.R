
# Q17: Advertising Cost and Sales

AdvertisingCost <- c(10, 12, 15, 18, 20,
                     22, 25, 28, 30, 35)

Sales <- c(25, 28, 32, 35, 40,
           42, 48, 50, 55, 62)

model <- lm(Sales ~ AdvertisingCost)

cat("Regression Results:\n")
print(summary(model))

cat("Coefficients:\n")
print(coef(model))

plot(AdvertisingCost, Sales,
     main = "Advertising Cost vs Sales",
     xlab = "Advertising Cost",
     ylab = "Sales",
     pch = 19, col = "blue")

abline(model, col = "red", lwd = 2)
