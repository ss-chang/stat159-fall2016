# ==============================================================================
# Read in Advertising.csv data set
# ==============================================================================
advertising <- read.csv(file = "../data/Advertising.csv", row.names = 1)



# ==============================================================================
# Generating eda-output.txt
# ==============================================================================
# sink output
sink(file = "../data/eda-output.txt")

# Summary statistics
cat("Summary Statistics for Advertising.csv\n")
adv_sum <-summary(advertising)
print(adv_sum)
cat("\n\n\n")

# Matrix of correlations
cat("Matrix of Correlations Among All Variables\n")
adv_cor <- cor(advertising, use = "all.obs")
print(adv_cor)

# STOP
sink()



# ==============================================================================
# Generating correlation-matrix.RData
# ==============================================================================
save(adv_cor, file = '../data/correlation-matrix.RData')


# ==============================================================================
# Generating images
# ==============================================================================
# HISTOGRAMS
# TV
png("../images/histogram-tv.png")
hist(advertising$TV, 
                xlab = "$ (in thousands)", 
                main = "TV Advertising Budgets",
                ylim = c(0,50))
dev.off()

# Radio
png("../images/histogram-radio.png")
hist(advertising$Radio, 
                xlab = "$ (in thousands)", 
                main = "Radio Advertising Budgets")

dev.off() 

# Newspaper 
png("../images/histogram-newspaper.png")
hist(advertising$Newspaper, 
                       xlab = "$ (in thousands)", 
                       main = "Newspaper Advertising Budgets",
                       ylim = c(0,50))
dev.off()

# Sales
png("../images/histogram-sales.png")
hist(advertising$Sales, 
                   xlab = "Units of Product Sold (in thousands)",
                   main = "Sales",
                   ylim = c(0,80))
dev.off()


# Scatterplot matrix
png("../images/scatterplot-matrix.png")
plot(advertising)
dev.off()