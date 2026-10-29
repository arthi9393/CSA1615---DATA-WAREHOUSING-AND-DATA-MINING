
# Q12: Normal Q-Q Plot

x <- c(21, 24, 27, 29, 31, 34, 37, 41, 45, 48)

qqnorm(x, main = "Normal Q-Q Plot")
qqline(x, col = "red", lwd = 2)

cat("Observations:\n")
print(x)

cat("Comment: If points approximately follow the line,",
    "the data are reasonably consistent with normality.\n")
