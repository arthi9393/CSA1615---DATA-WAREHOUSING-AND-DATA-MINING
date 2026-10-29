
# Q21: Weighted Mean of Product Prices

Price <- c(100, 200, 150, 300, 250)
Quantity <- c(10, 20, 15, 5, 25)

weighted_mean <- sum(Price * Quantity) / sum(Quantity)
ordinary_mean <- mean(Price)

cat("Prices:\n")
print(Price)

cat("Quantities:\n")
print(Quantity)

cat("Weighted Mean:", weighted_mean, "\n")
cat("Ordinary Mean:", ordinary_mean, "\n")
