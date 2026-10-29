
# Q11: Compare Two Groups of Exam Scores

GroupA <- c(78, 82, 85, 88, 90)
GroupB <- c(60, 75, 80, 90, 95)

statistics <- data.frame(
  Group = c("Group A", "Group B"),
  Mean = c(mean(GroupA), mean(GroupB)),
  Median = c(median(GroupA), median(GroupB)),
  Range = c(diff(range(GroupA)), diff(range(GroupB))),
  SD = c(sd(GroupA), sd(GroupB))
)

print(statistics)

if (sd(GroupA) < sd(GroupB)) {
  cat("Group A is more consistent.\n")
} else if (sd(GroupB) < sd(GroupA)) {
  cat("Group B is more consistent.\n")
} else {
  cat("Both groups have equal consistency.\n")
}
