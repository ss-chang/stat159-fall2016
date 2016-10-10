# load the source code of the functions to be tested
source("../functions/range-value-improved.R")


# context with one test that groups expectations
context("Test for improved range value") 


test_that("improved range value for numeric vectors", {
  x <- c(1, 2, 3, 4, 5)
  
  expect_equal(range_value_improved(x), 4)
  expect_length(range_value_improved(x), 1)
  expect_type(range_value_improved(x), 'double')
})


test_that("impproved range value for numeric vectors with NAs", {
  y <- c(1, 2, 3, 4, NA)
  
  expect_equal(range_value_improved(y), NA_real_)
  expect_length(range_value_improved(y), 1)
}) 

test_that("improved range value for numeric vectors with NAs, na.rm = TRUE", {
  y <- c(1, 2, 3, 4, NA)

  expect_equal(range_value_improved(y, na.rm = TRUE), 3)
  expect_length(range_value_improved(y, na.rm = TRUE), 1)
  })


test_that("improved range value for logical vectors", {
  z <- c(TRUE, FALSE, TRUE)
  
  expect_equal(range_value(z), 1L)
  expect_length(range_value(z), 1)
  expect_type(range_value(z), 'integer')
})


test_that("improved range value stops for character vectors", {
  w <- letters[1:5]
  
  expect_error(range_value(w))
}) 
