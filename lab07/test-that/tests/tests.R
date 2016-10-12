# load the source code of the functions to be tested
source("../functions/range-value.R")


# context with one test that groups expectations
context("Test for range value") 


test_that("range value", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(1, 2, 3, 4, NA)
  z <- c(TRUE, FALSE, TRUE)
  w <- letters[1:5]
  
  expect_equal(range_value(x), 4)
  expect_length(range_value(x), 1)
  expect_type(range_value(x), 'double')
  expect_equal(range_value(y), NA_real_)
  expect_length(range_value(y), 1)
  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
  expect_error(range_value(w))
})

test_that("range value", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(1, 2, 3, 4, NA)
  z <- c(TRUE, FALSE, TRUE)
  w <- letters[1:5]
  
  expect_equal(range_value(x, na.rm = TRUE), 4)
  expect_length(range_value(x, na.rm = TRUE), 1)
  expect_type(range_value(x, na.rm = TRUE), 'double')
  expect_equal(range_value(y, na.rm = TRUE), 3)
  expect_length(range_value(y, na.rm = TRUE), 1)
  expect_equal(range_value(z, na.rm = TRUE), 1L)
  expect_length(range_value(z, na.rm = TRUE), 1)
  expect_type(range_value(z, na.rm = TRUE), 'integer')
  expect_error(range_value(w, na.rm = TRUE))
})





# load the source code of the functions to be tested
source("../functions/missing-values.R")

# context with one test that groups expectations
context("Test for missing value") 


test_that("missing value", {
  x <- c(1, 2, 3, 4, 5)
  y <- c(1, 2, 3, 4, NA)
  z <- c(TRUE, FALSE, TRUE)
  w <- letters[1:5]
  
  expect_length(missing_values(x), 1)
  expect_type(missing_values(x), 'integer')
  expect_gte(missing_values(x), 0)
  expect_length(missing_values(y), 1)
  expect_type(missing_values(y), 'integer')
  expect_gte(missing_values(y), 1)
  expect_length(missing_values(z), 1)
  expect_type(missing_values(z), 'integer')
  expect_gte(missing_values(z), 0)
  expect_length(missing_values(w), 1)
  expect_type(missing_values(w), 'integer')
  expect_gte(missing_values(w), 0)
})