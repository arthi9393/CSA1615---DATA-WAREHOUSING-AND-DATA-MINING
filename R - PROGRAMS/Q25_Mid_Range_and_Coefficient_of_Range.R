# ============================================================
# ARTHI - R PROGRAM Q25
# Question: Mid-range and coefficient of range
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 25 ==========\\n")

# Q25. Mid-range and coefficient of range
x25 <- c(16, 22, 29, 35, 41, 48, 55)
mid_range <- (max(x25) + min(x25)) / 2
coef_range <- (max(x25) - min(x25)) / (max(x25) + min(x25))
cat("\nQ25 Mid-range:", mid_range, "\nCoefficient of range:", coef_range, "\n")

cat("\\n========== END OF Q25 ==========\\n")
