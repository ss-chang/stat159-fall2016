# ==============================================================================
# Packages used
# ==============================================================================
library(readr)
library(testthat)

# ==============================================================================
# Generating session-info.txt
# ==============================================================================
sink(file = "../../session-info.txt")

cat("Machine Information\n")

cat("Author: Shannon Chang\n\n\n")

cat("The following information details the machine and software used to create\n") 
cat("the original, local version of this repository.\n\n")

cat("Platform: Mac OS X on MacBook Air 13 inch, early 2015\n")

cat("Operating System: OS X El Capitan, Version 10.11.6\n")

cat("R Version: 3.3.1 (2016-06-21) Bug in Your Hair\n")

cat("Packages Used: readr, testthat")

sink()