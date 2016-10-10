# load the source code of the functions to be tested
source("../functions/missing-values.R")

x <- c(1, 2, 3, 4, 5)
  y <- as.double(x)

# context with one test that groups expectations
context("Test for missing value") 


test_that("test for missing value in numeric vector", {
  y
  expect_length(missing_values(y), 1)
  expect_type(missing_values(y), 'double')
  expect_gte(missing_values(y), '0')
})