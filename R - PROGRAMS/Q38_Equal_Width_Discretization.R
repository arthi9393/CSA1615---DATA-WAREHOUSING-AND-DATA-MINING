# ============================================================
# ARTHI - R PROGRAM Q38
# Question: Equal-width discretization into four intervals
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 38 ==========\\n")

# Q38. Equal-width discretization into four intervals
x38 <- c(10,14,18,23,29,34,41,48,55,63)
breaks38 <- seq(min(x38), max(x38), length.out=5)
bins38 <- cut(x38, breaks=breaks38, include.lowest=TRUE)
cat("\nQ38 Breaks:\n"); print(breaks38)
print(data.frame(Value=x38, Interval=bins38))
cat("Frequencies:\n"); print(table(bins38))

cat("\\n========== END OF Q38 ==========\\n")
