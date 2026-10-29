
# Q23: Daily Website Visits

visits <- c(120, 135, 150, 145, 160, 175,
            155, 180, 190, 170, 200, 185)

cat("Visits:\n")
print(visits)

cat("Mean:", mean(visits), "\n")
cat("Median:", median(visits), "\n")
cat("Quartiles:\n")
print(quantile(visits))

cat("Variance:", var(visits), "\n")
cat("Standard Deviation:", sd(visits), "\n")

hist(visits,
     main = "Daily Website Visits",
     xlab = "Number of Visits",
     col = "lightgreen",
     border = "black")
