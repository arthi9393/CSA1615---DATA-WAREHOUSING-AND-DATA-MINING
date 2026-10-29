
# Q3: Random Values

set.seed(25)
x <- runif(20, min = 1, max = 100)

print(x)
cat("Minimum:", min(x), "\n")
cat("Maximum:", max(x), "\n")
cat("Mean:", mean(x), "\n")
cat("Median:", median(x), "\n")

cat("Summary:\n")
print(summary(x))

hist(x,
     main = "Histogram of Random Values",
     xlab = "Values",
     col = "lightgreen",
     border = "black")
