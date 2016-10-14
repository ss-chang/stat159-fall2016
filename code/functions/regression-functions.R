# ==============================================================================
# Function residual_sum_squares()
# ==============================================================================
# This function will calculate the residual sum of squares (RSS) for an input 
# "lm.ob," which is expected to be a regression object generated from the 
# standard function lm(). Specifically, residual_sum_squares() will calculate 
# the sum of squared differences between the observed y-values in the linear 
# regression model and their corresponding predicted value. The observed y-values 
# are indexed as lm.ob$model[1], while the predicted y-values are indexed as 
# lm.ob$fitted.values. The output of residual_sum_squares() will be the RSS 
# value for the input regression object, given in numeric format.

residual_sum_squares <- function(lm.ob){
  sum((lm.ob$model[1] - lm.ob$fitted.values)^2)
}



# ==============================================================================
# Function total_sum_squares()
# ==============================================================================
# This function will calculate the total sum of squares (TSS) for an input 
# "lm.ob," which is expected to be a regression object generated from the 
# standard function lm(). Specifically, total_sum_squares() calculates the sum 
# of squared differences between between the observed y-values in the linear 
# regression model and the mean value of such observed values. The observed 
# y-values are indexed as lm.ob$model[1], while mean value of the observed 
# y-values is calculated through mean(lm.ob$moel[, 1]. The output of 
# residual_sum_squares() will be the TSS value for the input regression object, 
# given in numeric format. 

total_sum_squares <- function(lm.ob){
  sum((lm.ob$model[1] - mean(lm.ob$model[, 1]))^2)
}



# ==============================================================================
# Function r_squared()
# ==============================================================================
# This function will calculate the R-squared (R^2) value for an input "lm.ob," 
# which is expected to be a regression object generated from the standard 
# function lm(). Specifically, r_squared() calculates 1 minus the ratio of the 
# RSS value of the linear regression model to the TSS value. The RSS is 
# calculated through the previously written function residual_sum_squares(), 
# while the TSS is calculated through the previously written function 
# total_sum_squares(). The output of r_squared() will be the R^2 value for the 
# input regression object, given in numeric format.

r_squared <- function(lm.ob){
  1 - (residual_sum_squares(lm.ob) / total_sum_squares(lm.ob))
}



# ==============================================================================
# Function f_statistic()
# ==============================================================================
# This function will calculate the F-statistic (F-stat) value for an input 
# "lm.ob," which is expected to be a regression object generated from the 
# standard function lm(). Specifically, f_statistic() first sets 
# n = nrow(lm.ob$model) and p = ncol(lm.ob$model) - 1. The F-stat is then 
# calculated by the ratio of the difference between the TSS value of the linear 
# regression model and its RSS value to the ratio of the RSS value to n-p-1. The 
# output of f_statistic() will be the F-stat value for the input regression 
# object, given in numeric format.

f_statistic <- function(lm.ob){
  n = nrow(lm.ob$model)
  p = ncol(lm.ob$model)-1
  ((total_sum_squares(lm.ob) - residual_sum_squares(lm.ob))/p) / 
    (residual_sum_squares(lm.ob)/(n-p-1))
}



# ==============================================================================
# Function residual_std_error()
# ==============================================================================
# This function will calculate the residual standard error (RSE) value for an 
# input "lm.ob," which is expected to be a regression object generated from the 
# standard function lm(). Specifically, residual_std_error() first 
# sets n = nrow(lm.ob$model) and p = ncol(lm.ob$model) - 1, the same as for 
# f_statistic(). The RSE is then calculated by the square root of the ratio of 
# 1 to n-p-1, times the RSS value of the linear regression model. The RSS value 
# is calculated through the previously written funnction residual_sum_squares() 
# The output of residual_std_error() will be the RSE value for the input 
# regression object, given in numeric format.

residual_std_error <- function(lm.ob){
  n = nrow(lm.ob$model)
  p = ncol(lm.ob$model)-1
  sqrt((1/(n-p-1))*residual_sum_squares(lm.ob))
}