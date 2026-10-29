
# Q19: Identify and Replace Missing Values

x <- c(10, 20, NA, 30, NA, 40, 50, NA, 60, 70)

cat("Original Vector:\n")
print(x)

cat("Missing Value Positions:\n")
print(which(is.na(x)))

cat("Number of Missing Values:",
    sum(is.na(x)), "\n")

mean_value <- mean(x, na.rm = TRUE)
cat("Mean of Available Values:", mean_value, "\n")

x[is.na(x)] <- mean_value

cat("Vector After Replacement:\n")
print(x)
