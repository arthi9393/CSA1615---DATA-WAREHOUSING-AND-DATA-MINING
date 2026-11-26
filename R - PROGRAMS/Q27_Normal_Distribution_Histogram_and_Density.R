# ============================================================
# ARTHI - R PROGRAM Q27
# Question: 30 normal observations, mean, SD, histogram and density
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 27 ==========\\n")

# Q27. 30 normal observations, mean, SD, histogram and density
set.seed(40)
x27 <- rnorm(30)
cat("\nQ27 Mean:", mean(x27), "\nSD:", sd(x27), "\n")
hist(x27, probability=TRUE, col="lightblue", main="Histogram with Density Curve",
     xlab="Generated observations")
lines(density(x27), col="red", lwd=2)

cat("\\n========== END OF Q27 ==========\\n")
