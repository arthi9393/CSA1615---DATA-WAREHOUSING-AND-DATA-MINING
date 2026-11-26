# ============================================================
# ARTHI - R PROGRAM Q33
# Question: 4x4 marks matrix; row/column totals and overall mean
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 33 ==========\\n")

# Q33. 4x4 marks matrix; row/column totals and overall mean
marks <- matrix(c(78,85,90,88, 65,72,80,75,
                  92,89,95,91, 70,74,68,77), nrow=4, byrow=TRUE)
rownames(marks) <- paste0("Student",1:4)
colnames(marks) <- paste0("Subject",1:4)
cat("\nQ33 Marks matrix:\n"); print(marks)
cat("Row totals:"); print(rowSums(marks))
cat("Column totals:"); print(colSums(marks))
cat("Overall mean:", mean(marks), "\n")

cat("\\n========== END OF Q33 ==========\\n")
