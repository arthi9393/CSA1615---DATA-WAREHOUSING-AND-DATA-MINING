# ============================================================
# ARTHI - R PROGRAM Q40
# Question: Age and body fat; scatter, Pearson correlation, Q-Q plot
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 40 ==========\\n")

# Q40. Age and body fat; scatter, Pearson correlation, Q-Q plot
Age <- c(22,25,28,31,34,37,40,43,46,49,52,55)
BodyFat <- c(15,18,20,22,24,27,29,31,33,35,37,40)
plot(Age,BodyFat,pch=19,col="purple",main="Age vs Body Fat",
     xlab="Age (years)",ylab="Body fat (%)")
cat("\nQ40 Pearson correlation:", cor(Age,BodyFat,method="pearson"), "\n")
qqnorm(Age,main="Normal Q-Q Plot for Age"); qqline(Age,col="red",lwd=2)

cat("\\n========== END OF Q40 ==========\\n")
