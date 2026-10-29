
# Q22: Frequency Distribution

x <- c(5, 7, 7, 8, 9, 9,
       9, 10, 11, 11, 12)

frequency <- table(x)

cat("Frequency Distribution:\n")
print(frequency)

barplot(frequency,
        main = "Frequency Distribution",
        xlab = "Values",
        ylab = "Frequency",
        col = "skyblue")
