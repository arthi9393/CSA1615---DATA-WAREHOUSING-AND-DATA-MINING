
# Q24: Z-Score Normalization

x <- c(45, 52, 61, 68, 75, 81, 90)

mean_value <- mean(x)
sample_sd <- sd(x)

z_scores <- (x - mean_value) / sample_sd

result <- data.frame(
  Original = x,
  Z_Score = round(z_scores, 4)
)

cat("Mean:", mean_value, "\n")
cat("Sample Standard Deviation:", sample_sd, "\n")
print(result)
