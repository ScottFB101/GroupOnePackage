#' Creates box plots of every numeric variable in any data frame.
#'
#' @param dataframe Any data frame
#'
#' @return A ggplot graph of box plots.
#'
#' @importFrom tidyr pivot_longer
#' @import ggplot2
#'
#' @export
create_box_plots <- function(data) {

  #Using helper function
  numeric_data <- check_numeric_columns(data)

  long_data <- pivot_longer(numeric_data,
                            cols = everything(),
                            names_to = "variable",
                            values_to = "value")
  #Create the box plot
  ggplot(long_data, aes(x = variable, y = value)) +
    geom_boxplot() +
    labs(title = "Boxplot of Numeric Variables",
         x = "Variables",
         y = "Values") +
    theme_classic()
}

#' Returns a data frame containing only the numeric columns of the original data frame
#'
#' @param data Any data frame.
#'
#' @return A subset of numeric variables from the original data frame.
check_numeric_columns <- function(data) {

  stopifnot(is.data.frame(data))

  #Is the column numeric?
  is_numeric <- sapply(data, is.numeric)
  #Subset to only numeric columns
  numeric_data <- data[, is_numeric]

  return(numeric_data)
}
