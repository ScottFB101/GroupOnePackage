#' Creates a scatter plot of two different quantitative variables
#'
#' @param dataframe Any data frame
#' @param x First selected quantitative variable on x axis
#' @param y Second selected quantitative variable on y axis
#' @return A ggplot graph of a scatter plot.
#'
#' @import ggplot2
#'
#' @export
create_scatter_plot <- function(data, x, y) {
  stopifnot(is.data.frame(data))
  stopifnot(ncol(numeric_columns(data)) >= 2)
  ggplot(data, aes({{x}}, {{y}})) +
    geom_point(color = "Blue")
}
#' Returns a data frame containing numeric columns of the original data frame
#'
#' @param data Any data frame.
#'
#' @return A subset of numeric variables from the original data frame. Used to test to see if scatter plot can be made
numeric_columns <- function(data) {
  is_numeric <- sapply(data, is.numeric)
  numeric_data <- data[, is_numeric]
  return(numeric_data)
}
