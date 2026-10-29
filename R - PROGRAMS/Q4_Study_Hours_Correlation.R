
# Q4: Correlation and Scatter Plot

StudyHours <- c(1, 2, 3, 4, 5, 6, 7, 2, 4, 6)
Marks <- c(45, 50, 55, 65, 70, 78, 85, 52, 63, 80)

print(data.frame(StudyHours, Marks))

correlation <- cor(StudyHours, Marks,
                   method = "pearson")

cat("Pearson Correlation:", correlation, "\n")

plot(StudyHours, Marks,
     main = "Study Hours vs Marks",
     xlab = "Study Hours",
     ylab = "Marks",
     pch = 19,
     col = "blue")

abline(lm(Marks ~ StudyHours),
       col = "red",
       lwd = 2)
