# ============================================================
# ARTHI - R PROGRAM Q29
# Question: Dispersion measures and sensitivity to an extreme value
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 29 ==========\\n")

# Q29. Dispersion measures and sensitivity to an extreme value
transactions <- c(120, 150, 175, 180, 200, 220, 240, 260, 275, 300)
cat("\nQ29 Original range:", diff(range(transactions)),
    "\nIQR:", IQR(transactions), "\nVariance:", var(transactions),
    "\nSD:", sd(transactions), "\n")
transactions_extreme <- c(transactions, 2000)
cat("With extreme value 2000 -> Range:", diff(range(transactions_extreme)),
    " Variance:", var(transactions_extreme), " SD:", sd(transactions_extreme), "\n")
cat("The range, variance and SD are sensitive to an extreme value; IQR is more robust.\n")

cat("\\n========== END OF Q29 ==========\\n")
