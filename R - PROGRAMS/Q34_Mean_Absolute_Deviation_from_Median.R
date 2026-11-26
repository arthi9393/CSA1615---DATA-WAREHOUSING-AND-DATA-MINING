# ============================================================
# ARTHI - R PROGRAM Q34
# Question: Mean absolute deviation from median
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 34 ==========\\n")

# Q34. Mean absolute deviation from median
x34 <- c(9,12,15,18,20,24,28,31)
mad_median <- mean(abs(x34 - median(x34)))
cat("\nQ34 Median:", median(x34), "\nMean absolute deviation from median:", mad_median, "\n")

cat("\\n========== END OF Q34 ==========\\n")
