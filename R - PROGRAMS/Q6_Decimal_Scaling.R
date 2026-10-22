
# Q6: Decimal-Scaling Normalization

x <- c(125, 250, 375, 500, 750)

j <- ceiling(log10(max(abs(x)) + 1))

normalized <- x / (10^j)

result <- data.frame(
  Original = x,
  Normalized = normalized
)

cat("Scaling factor:", 10^j, "\n")
print(result)
