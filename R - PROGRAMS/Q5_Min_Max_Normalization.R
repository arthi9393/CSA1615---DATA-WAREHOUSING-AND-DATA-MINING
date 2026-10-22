
# Q5: Min-Max Normalization

x <- c(18, 25, 32, 40, 55, 70, 85)

normalized <- (x - min(x)) /
              (max(x) - min(x))

result <- data.frame(
  Original = x,
  Normalized = round(normalized, 4)
)

print(result)
