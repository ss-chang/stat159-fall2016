# ==============================================================================
# Read in Advertising.csv data set
# ==============================================================================
advertising <- read.csv(file = "../data/Advertising.csv", row.names = 1)



# ==============================================================================
# Regression analysis
# ==============================================================================
# Regression object
reg <- lm(Sales ~ TV + Radio + Newspaper, data = advertising)
reg

# Summary
regsum <- summary(reg)
regsum



# ==============================================================================
# Generating regression.RData
# ==============================================================================
# Output file
save(reg, regsum, file = '../data/regression.RData')



# ==============================================================================
# Generating images
# ==============================================================================
# Residual plot
png("../images/residual-plot.png")
plot(reg, which = c(1))
dev.off()

# Scale location plot
png("../images/scale-location-plot.png")
plot(reg, which = c(3))
dev.off()

# Normal qq plot
png("../images/normal-qq-plot.png")
plot(reg, which = c(2))
dev.off()