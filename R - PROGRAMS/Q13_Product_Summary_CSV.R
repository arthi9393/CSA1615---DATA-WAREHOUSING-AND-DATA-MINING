
# Q13: Product Data and CSV Export

Product <- paste0("Product_", 1:8)
Quantity <- c(10, 15, 20, 12, 18, 25, 14, 22)
Revenue <- c(2000, 3750, 6000, 3600,
             6300, 10000, 4200, 7700)

products <- data.frame(Product, Quantity, Revenue)

print(products)

cat("Numeric Summary:\n")
print(summary(products[c("Quantity", "Revenue")]))

write.csv(products, "Q13_Product_Data.csv",
          row.names = FALSE)

cat("CSV file saved in:\n")
cat(getwd(), "\n")
