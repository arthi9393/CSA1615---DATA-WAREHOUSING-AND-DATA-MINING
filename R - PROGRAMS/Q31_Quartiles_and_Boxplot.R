# ============================================================
# ARTHI - R PROGRAM Q31
# Question: Quartiles and boxplot
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 31 ==========\\n")

# Q31. Quartiles and boxplot
x31 <- c(11,14,16,18,21,23,26,29,31,34,38,42,47)
cat("\nQ31 Q1:", quantile(x31, 0.25), " Q3:", quantile(x31, 0.75), "\n")
boxplot(x31, col="wheat", main="Boxplot of Values", ylab="Value")

cat("\\n========== END OF Q31 ==========\\n")
