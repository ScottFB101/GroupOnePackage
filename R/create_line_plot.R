#' Creates a line plot of two quantitative variables
#'
#' @param dataframe Any data frame
#'
#' @param x First selected quantitative variable on x axis
#'
#' @param y Second selected quantitative variable on y axis
#'
#' @return A ggplot graph of a line plot.
#'
#' @import ggplot2
#'
#' @export
create_line_plot <- function(data, x, y) {

  stopifnot(is.data.frame(data))

  stopifnot(ncol(numeric_columns(data)) >= 2)

  ggplot(data, aes({{x}}, {{y}})) +
    geom_line(color = "Black")
}
#' Returns a data frame containing numeric columns of the data frame
#'
#' @param data Any data frame.
#'
#' @return A subset of numeric variables from the original data fram to test if line plot can be produced
numeric_columns <- function(data) {

  is_numeric <- sapply(data, is.numeric)

  numeric_data <- data[, is_numeric]

  return(numeric_data)
}
