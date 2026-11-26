# ============================================================
# ARTHI - R PROGRAM Q39
# Question: Compare two classes; means, medians, SD, boxplot
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 39 ==========\\n")

# Q39. Compare two classes; means, medians, SD, boxplot
classA <- c(65,68,70,72,74,76,78,80)
classB <- c(50,60,65,72,78,85,90,95)
cat("\nQ39 Class A mean/median/SD:", mean(classA), median(classA), sd(classA), "\n")
cat("Class B mean/median/SD:", mean(classB), median(classB), sd(classB), "\n")
boxplot(classA,classB,names=c("Class A","Class B"),col=c("lightblue","lightgreen"),
        main="Marks Comparison",ylab="Marks")
cat("More consistent class (lower SD):", ifelse(sd(classA)<sd(classB),"Class A","Class B"), "\n")

cat("\\n========== END OF Q39 ==========\\n")
