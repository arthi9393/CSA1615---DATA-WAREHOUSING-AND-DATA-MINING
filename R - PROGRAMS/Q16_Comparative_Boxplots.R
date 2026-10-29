
# Q16: Compare Two Groups of Marks

GroupA <- c(70, 72, 74, 75, 76, 78, 80)
GroupB <- c(45, 60, 70, 75, 80, 90, 100)

boxplot(GroupA, GroupB,
        names = c("Group A", "Group B"),
        main = "Comparative Boxplots",
        ylab = "Marks",
        col = c("lightblue", "lightgreen"))

cat("Group A IQR:", IQR(GroupA), "\n")
cat("Group B IQR:", IQR(GroupB), "\n")

cat("Group A outliers:\n")
print(boxplot.stats(GroupA)$out)

cat("Group B outliers:\n")
print(boxplot.stats(GroupB)$out)

if (IQR(GroupA) > IQR(GroupB)) {
  cat("Group A has greater middle spread.\n")
} else if (IQR(GroupB) > IQR(GroupA)) {
  cat("Group B has greater middle spread.\n")
} else {
  cat("Both groups have equal IQR.\n")
}
