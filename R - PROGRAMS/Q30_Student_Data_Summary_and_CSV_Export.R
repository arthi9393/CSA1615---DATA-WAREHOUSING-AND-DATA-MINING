# ============================================================
# ARTHI - R PROGRAM Q30
# Question: Student data, summary and CSV export
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 30 ==========\\n")

# Q30. Student data, summary and CSV export
students <- data.frame(
  StudentID=c("S101","S102","S103","S104","S105"),
  Attendance=c(90, 82, 75, 96, 68),
  Marks=c(88, 76, 69, 93, 60),
  Grade=c("A","B","C","A","D")
)
cat("\nQ30 Student summary:\n")
print(summary(students))
write.csv(students, "Arthi_Student_Data.csv", row.names=FALSE)
cat("CSV saved as Arthi_Student_Data.csv in the current working directory.\n")

cat("\\n========== END OF Q30 ==========\\n")
