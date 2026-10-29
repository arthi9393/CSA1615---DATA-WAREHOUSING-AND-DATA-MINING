
# Q20: Sort Employees by Salary

Employee <- c("Arun", "Priya", "Rahul", "Divya",
              "Kiran", "Meena", "Vijay", "Anu",
              "Ravi", "Sneha")

Salary <- c(30000, 45000, 38000, 60000, 52000,
            42000, 75000, 48000, 65000, 55000)

employees <- data.frame(Employee, Salary)

sorted_employees <- employees[
  order(employees$Salary, decreasing = TRUE), ]

cat("Employees Sorted by Salary:\n")
print(sorted_employees)

cat("Top Three Employees:\n")
print(head(sorted_employees, 3))
