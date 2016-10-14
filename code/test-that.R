# ==============================================================================
# Load source code for functions and relevant data to be tested
# ==============================================================================
library(testthat)
library(readr)
advertising <- read.csv(file = "code/data/Advertising.csv", row.names = 1)
source("code/functions/regression-functions.R")
load("code/data/regression.RData")


# ==============================================================================
# Execute test for test-regression.R
# ==============================================================================
test_file("code/tests/test-regression.R")