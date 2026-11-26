# ============================================================
# ARTHI - R PROGRAM Q36
# Question: Coefficient of variation for two datasets
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 36 ==========\\n")

# Q36. Coefficient of variation for two datasets
d1 <- c(10,12,14,16,18,20)
d2 <- c(20,25,30,35,40,45)
cv1 <- sd(d1)/mean(d1)*100; cv2 <- sd(d2)/mean(d2)*100
cat("\nQ36 CV dataset 1:", cv1, "%\nCV dataset 2:", cv2, "%\n")
cat("Greater relative variability:", ifelse(cv1>cv2,"Dataset 1","Dataset 2"), "\n")

cat("\\n========== END OF Q36 ==========\\n")
