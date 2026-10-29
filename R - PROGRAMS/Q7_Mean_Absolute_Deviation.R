 
# Q7: Mean Absolute Deviation

x <- c(14, 18, 20, 23, 27, 31, 36)

mean_value <- mean(x)

MAD <- mean(abs(x - mean_value))

cat("Values:", x, "\n")
cat("Mean:", mean_value, "\n")
cat("Mean Absolute Deviation:", MAD, "\n")
