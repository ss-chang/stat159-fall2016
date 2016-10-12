# ==============================================================================
# Read in Advertising.csv data set
# ==============================================================================
advertising <- read.csv(file = "code/data/Advertising.csv", 
                        row.names = 1)



# ==============================================================================
# Generating eda-output.txt
# ==============================================================================
# sink output
sink(file = "data/eda-output.txt")

# Summary statistics
print(noquote("Summary Statistics for Advertising.csv"))
summary(advertising) 

# Matrix of correlations
print(noquote("Matrix of Correlations Among All Variables"))
cor(advertising, use = "all.obs")

# STOP
sink()



# ==============================================================================
# Generating images
# ==============================================================================
# HISTOGRAMS
# TV
png("images/histogram-tv.png")
tv_hist <- hist(advertising$TV, 
                xlab = "$ (in thousands)", 
                main = "TV Advertising Budgets",
                ylim = c(0,50))
dev.off()

# Radio
png("images/histogram-radio.png")
radio_hist <- hist(advertising$Radio, 
                xlab = "$ (in thousands)", 
                main = "Radio Advertising Budgets")
dev.off() 

# Newspaper 
png("images/histogram-newspaper.png")
newspaper_hist <- hist(advertising$Newspaper, 
                       xlab = "$ (in thousands)", 
                       main = "Newspaper Advertising Budgets",
                       ylim = c(0,50))
dev.off()

# Sales
png("images/histogram-sales.png")
sales_hist <- hist(advertising$Sales, 
                   xlab = "Units of Product Sold (in thousands)",
                   main = "Sales",
                   ylim = c(0,80))
dev.off()


# Scatterplot matrix
png("images/scatterplot-matrix.png")
plot(advertising)
dev.off()