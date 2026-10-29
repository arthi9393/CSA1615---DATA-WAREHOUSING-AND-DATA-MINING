
# Q18: Rainfall and Crop Yield

Rainfall <- c(50, 60, 70, 80, 90,
              100, 110, 120)

CropYield <- c(20, 24, 25, 30, 33,
               35, 40, 43)

cat("Covariance:", cov(Rainfall, CropYield), "\n")

correlation <- cor(Rainfall, CropYield,
                   method = "pearson")

cat("Pearson Correlation:", correlation, "\n")

plot(Rainfall, CropYield,
     main = "Rainfall vs Crop Yield",
     xlab = "Rainfall",
     ylab = "Crop Yield",
     pch = 19, col = "darkgreen")
