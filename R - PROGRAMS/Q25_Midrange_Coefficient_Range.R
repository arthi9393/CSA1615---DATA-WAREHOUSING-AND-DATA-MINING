
# Q25: Mid-Range and Coefficient of Range

x <- c(16, 22, 29, 35, 41, 48, 55)

minimum <- min(x)
maximum <- max(x)

mid_range <- (maximum + minimum) / 2

coefficient_range <- (maximum - minimum) /
                     (maximum + minimum)

cat("Values:", x, "\n")
cat("Minimum:", minimum, "\n")
cat("Maximum:", maximum, "\n")
cat("Mid-Range:", mid_range, "\n")
cat("Coefficient of Range:", coefficient_range, "\n")
