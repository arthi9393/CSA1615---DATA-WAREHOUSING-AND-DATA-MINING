
# Q8: Product Ratings

ratings <- c(
  "Good", "Excellent", "Average", "Good",
  "Poor", "Good", "Excellent", "Average",
  "Good", "Excellent", "Poor", "Good",
  "Average", "Excellent", "Good"
)

frequency <- table(factor(
  ratings,
  levels = c("Poor", "Average", "Good", "Excellent")
))

cat("Product Ratings:\n")
print(ratings)

cat("Frequency Table:\n")
print(frequency)

barplot(frequency,
        main = "Product Ratings",
        xlab = "Rating",
        ylab = "Frequency",
        col = "skyblue")
