# ============================================================
# ARTHI - R PROGRAM Q26
# Question: Department employee counts; vertical and horizontal bar plots
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 26 ==========\\n")

# Q26. Department employee counts; vertical and horizontal bar plots
departments <- c("HR", "IT", "Sales", "Finance", "Marketing")
employees <- c(12, 25, 18, 10, 15)
par(mfrow=c(1,2))
barplot(employees, names.arg=departments, col="skyblue",
        main="Employees by Department", xlab="Department", ylab="Employees")
barplot(employees, names.arg=departments, col="lightgreen", horiz=TRUE,
        main="Horizontal Employee Count", xlab="Employees", ylab="Department")
par(mfrow=c(1,1))

cat("\\n========== END OF Q26 ==========\\n")
