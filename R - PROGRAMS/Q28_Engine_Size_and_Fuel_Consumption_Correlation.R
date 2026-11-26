# ============================================================
# ARTHI - R PROGRAM Q28
# Question: Engine size and fuel consumption; scatter and correlation
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 28 ==========\\n")

# Q28. Engine size and fuel consumption; scatter and correlation
EngineSize <- c(1.2, 1.4, 1.6, 1.8, 2.0, 2.2, 2.4, 2.6)
FuelConsumption <- c(5.2, 5.8, 6.1, 6.8, 7.2, 7.8, 8.1, 8.9)
plot(EngineSize, FuelConsumption, pch=19, col="blue",
     main="Engine Size vs Fuel Consumption",
     xlab="Engine size (L)", ylab="Fuel consumption (L/100 km)")
cat("\nQ28 Pearson correlation:", cor(EngineSize, FuelConsumption), "\n")

cat("\\n========== END OF Q28 ==========\\n")
