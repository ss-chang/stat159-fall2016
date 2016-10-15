# ==============================================================================
# Packages used
# ==============================================================================
library(readr)
library(testthat)
library(xtable)
library(png)
library(grid)
library(gridExtra)
library(rmarkdown)

# ==============================================================================
# Generating session-info.txt
# ==============================================================================
sink(file = "../../session-info.txt")
sessionInfo()
sink()