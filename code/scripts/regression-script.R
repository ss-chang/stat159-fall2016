# ==============================================================================
# Read in Advertising.csv data set
# ==============================================================================
library(readr)
advertising <- read.csv(file = "../data/Advertising.csv", row.names = 1)



# ==============================================================================
# Regression analysis
# ==============================================================================
# Regression objects
# Sales on TV
sales_tv_reg <- lm(Sales ~ TV, data = advertising)

# Sales on Radio
sales_radio_reg <- lm(Sales ~ Radio, data = advertising)


# Sales on Newspaper
sales_np_reg <- lm(Sales ~ Newspaper, data = advertising)

# Multiple Regression
multi_reg <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)


# Summaries
# Sales on TV
sales_tv_sum <- summary(sales_tv_reg)

# Sales on Radio
sales_radio_sum <- summary(sales_radio_reg)

# Sales on Newspaper
sales_np_sum <- summary(sales_np_reg)

# Multiple Regression
multi_sum <- summary(multi_reg)



# ==============================================================================
# Generating regression.RData
# ==============================================================================
# Output file
save(sales_tv_reg,
     sales_radio_reg,
     sales_np_reg,
     multi_reg, 
     sales_tv_sum, 
     sales_radio_sum, 
     sales_np_sum, 
     multi_sum,
     file = '../data/regression.RData')



# ==============================================================================
# Generating images
# ==============================================================================
# Scatterplot of TV, Sales
png("../images/scatterplot-tv-sales.png")
plot(x = advertising$TV, y = advertising$Sales, 
     xlab = "TV Advertising Budgets (in thousands of dollars)", 
     ylab = "Sales (in thousands of product units)")
abline(sales_tv_reg)
dev.off()

# Scatterplot of Radio, Sales
png("../images/scatterplot-radio-sales.png")
plot(x = advertising$Radio, y = advertising$Sales, 
     xlab = "Radio Advertising Budgets (in thousands of dollars)", 
     ylab = "Sales (in thousands of product units)")
abline(sales_radio_reg)
dev.off()

# Scatterplot of Newspaper, Sales
png("../images/scatterplot-newspaper-sales.png")
plot(x = advertising$Newspaper, y = advertising$Sales, 
     xlab = "Newspaper Advertising Budgets (in thousands of dollars)", 
     ylab = "Sales (in thousands of product units)")
abline(sales_np_reg)
dev.off()

# Residual plot
png("../images/residual-plot.png")
plot(multi_reg, which = c(1))
dev.off()

# Scale location plot
png("../images/scale-location-plot.png")
plot(multi_reg, which = c(3))
dev.off()

# Normal qq plot
png("../images/normal-qq-plot.png")
plot(multi_reg, which = c(2))
dev.off()