range_value <- function(x, na.rm = FALSE) {
  if (na.rm == TRUE) x <- na.omit(x)
  	else x <- x
  max(x) - min(x)
}
