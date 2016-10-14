# ==============================================================================
# Load source code for functions and relevant data to be tested
# ==============================================================================
source("../functions/regression-functions.R")
load("../data/regression.RData")
library(testthat)



# ==============================================================================
# Testing residual_sum_squares()
# ==============================================================================
context("Test for residual sum of squares value")

test_that("RSS value", {
  expect_equal(residual_sum_squares(sales_tv_reg), sum(sales_tv_sum$residuals^2))
  expect_length(residual_sum_squares(sales_tv_reg), 1)
  expect_is(residual_sum_squares(sales_tv_reg), "numeric")
  expect_equal(residual_sum_squares(sales_radio_reg), sum(sales_radio_sum$residuals^2))
  expect_length(residual_sum_squares(sales_radio_reg), 1)
  expect_is(residual_sum_squares(sales_radio_reg), "numeric")
  expect_equal(residual_sum_squares(sales_np_reg), sum(sales_np_sum$residuals^2))
  expect_length(residual_sum_squares(sales_np_reg), 1)
  expect_is(residual_sum_squares(sales_np_reg), "numeric")
  expect_equal(residual_sum_squares(multi_reg), sum(multi_sum$residuals^2))
  expect_length(residual_sum_squares(multi_reg), 1)
  expect_is(residual_sum_squares(multi_reg), "numeric")
})



# ==============================================================================
# Testing total_sum_squares()
# ==============================================================================
context("Test for total sum of squares value")

test_that("TSS value", {
  expect_equal(total_sum_squares(sales_tv_reg), 
               sum((advertising$Sales - mean(advertising$Sales))^2))
  expect_length(total_sum_squares(sales_tv_reg), 1)
  expect_is(total_sum_squares(sales_tv_reg), "numeric")
  expect_equal(total_sum_squares(sales_radio_reg), 
               sum((advertising$Sales - mean(advertising$Sales))^2))
  expect_length(total_sum_squares(sales_radio_reg), 1)
  expect_is(total_sum_squares(sales_radio_reg), "numeric")
  expect_equal(total_sum_squares(sales_np_reg), 
               sum((advertising$Sales - mean(advertising$Sales))^2))
  expect_length(total_sum_squares(sales_np_reg), 1)
  expect_is(total_sum_squares(sales_np_reg), "numeric")
  expect_equal(total_sum_squares(multi_reg), 
               sum((advertising$Sales - mean(advertising$Sales))^2))
  expect_length(total_sum_squares(multi_reg), 1)
  expect_is(total_sum_squares(multi_reg), "numeric")
})



# ==============================================================================
# Testing r_squared()
# ==============================================================================
context("Test for R-squared value")

test_that("R^2 value", {
  expect_equal(r_squared(sales_tv_reg), sales_tv_sum$r.squared)
  expect_length(r_squared(sales_tv_reg), 1)
  expect_is(r_squared(sales_tv_reg), "numeric")
  expect_equal(r_squared(sales_radio_reg), sales_radio_sum$r.squared)
  expect_length(r_squared(sales_radio_reg), 1)
  expect_is(r_squared(sales_radio_reg), "numeric")
  expect_equal(r_squared(sales_np_reg), sales_np_sum$r.squared)
  expect_length(r_squared(sales_np_reg), 1)
  expect_is(r_squared(sales_np_reg), "numeric")
  expect_equal(r_squared(multi_reg), multi_sum$r.squared)
  expect_length(r_squared(multi_reg), 1)
  expect_is(r_squared(multi_reg), "numeric")
})



# ==============================================================================
# Testing f_statistic()
# ==============================================================================
context("Test for F-statistic value")

test_that("F-stat value", {
  expect_equal(f_statistic(sales_tv_reg), as.numeric(sales_tv_sum$fstatistic[1]))
  expect_length(f_statistic(sales_tv_reg), 1)
  expect_is(f_statistic(sales_tv_reg), "numeric")
  expect_equal(f_statistic(sales_radio_reg), as.numeric(sales_radio_sum$fstatistic[1]))
  expect_length(f_statistic(sales_radio_reg), 1)
  expect_is(f_statistic(sales_radio_reg), "numeric")
  expect_equal(f_statistic(sales_np_reg), as.numeric(sales_np_sum$fstatistic[1]))
  expect_length(f_statistic(sales_np_reg), 1)
  expect_is(f_statistic(sales_np_reg), "numeric")
  expect_equal(f_statistic(multi_reg), as.numeric(multi_sum$fstatistic[1]))
  expect_length(f_statistic(multi_reg), 1)
  expect_is(f_statistic(multi_reg), "numeric")
})



# ==============================================================================
# Testing residual_std_error()
# ==============================================================================
context("Test for residual standard error value")

test_that("RSE value", {
  expect_equal(residual_std_error(sales_tv_reg), sales_tv_sum$sigma)
  expect_length(residual_std_error(sales_tv_reg), 1)
  expect_is(residual_std_error(sales_tv_reg), "numeric")
  expect_equal(residual_std_error(sales_radio_reg), sales_radio_sum$sigma)
  expect_length(residual_std_error(sales_radio_reg), 1)
  expect_is(residual_std_error(sales_radio_reg), "numeric")
  expect_equal(residual_std_error(sales_np_reg), sales_np_sum$sigma)
  expect_length(residual_std_error(sales_np_reg), 1)
  expect_is(residual_std_error(sales_np_reg), "numeric")
  expect_equal(residual_std_error(multi_reg), multi_sum$sigma)
  expect_length(residual_std_error(multi_reg), 1)
  expect_is(residual_std_error(multi_reg), "numeric")
})