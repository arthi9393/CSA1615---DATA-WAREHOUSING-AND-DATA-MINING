# ============================================================
# ARTHI - R PROGRAM Q37
# Question: 15 ages into three equal-frequency groups using quantile cut points
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 37 ==========\\n")

# Q37. 15 ages into three equal-frequency groups using quantile cut points
ages <- c(18,19,21,22,23,25,26,28,29,31,33,35,37,40,45)
age_breaks <- quantile(ages, probs=seq(0,1,length.out=4))
age_groups <- cut(ages, breaks=unique(age_breaks), include.lowest=TRUE,
                  labels=c("Young","Middle","Older"))
cat("\nQ37 Quantile cut points:\n"); print(age_breaks)
print(data.frame(Age=ages, Group=age_groups))
cat("Group frequencies:\n"); print(table(age_groups))

cat("\\n========== END OF Q37 ==========\\n")
