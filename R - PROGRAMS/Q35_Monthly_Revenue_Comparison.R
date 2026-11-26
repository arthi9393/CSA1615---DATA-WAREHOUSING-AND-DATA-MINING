# ============================================================
# ARTHI - R PROGRAM Q35
# Question: Monthly revenue for two years; line graph and largest increase
# Run this file independently in RStudio or R.
# Base R only; no additional packages required.
# ============================================================

cat("\\n========== ARTHI | R QUESTION 35 ==========\\n")

# Q35. Monthly revenue for two years; line graph and largest increase
months <- month.abb
year1 <- c(20,22,24,23,27,30,32,31,35,38,40,44)
year2 <- c(23,25,26,28,31,34,36,39,41,45,48,53)
matplot(1:12, cbind(year1,year2), type="b", pch=1:2, lty=1,
        col=c("blue","red"), xaxt="n", xlab="Month", ylab="Revenue",
        main="Monthly Revenue: Two Years")
axis(1, at=1:12, labels=months)
legend("topleft", legend=c("Year 1","Year 2"), col=c("blue","red"), lty=1, pch=1:2)
inc1 <- diff(year1); inc2 <- diff(year2)
cat("\nQ35 Largest month-to-month increase Year 1:", max(inc1),
    "between", months[which.max(inc1)], "and", months[which.max(inc1)+1], "\n")
cat("Largest month-to-month increase Year 2:", max(inc2),
    "between", months[which.max(inc2)], "and", months[which.max(inc2)+1], "\n")

cat("\\n========== END OF Q35 ==========\\n")
