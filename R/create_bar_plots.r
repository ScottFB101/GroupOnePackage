#' #' Creates bar plots of every categorical variable in a data frame
#'
#' @param dataframe Any data frame
#'
#' @return A ggplot made bar plot
#'
#' @import ggplot2
#'
#' @export
create_bar_plots <- function(data) {

  #Using helper function
  cat_data <- filter_categorical(data)

  for (col in colnames(cat_data)) {

    plot_data <- as.data.frame(table(cat_data[[col]]))
    plot_title <- paste("Bar Plot of", col)

    plot <- ggplot(plot_data, aes(x = Var1, y = Freq)) +
      geom_bar(stat = "identity", color = "black", width = 0.8) +
      ggtitle(plot_title) +
      xlab(col) +
      ylab("Count") +
      theme_minimal() +
      theme(plot.title = element_text(hjust = 0.5, size = 14, face = "bold"),
            axis.text.x = element_text(angle = 45, hjust = 1),
            legend.position = "none",
            panel.grid.major = element_blank(),
            panel.grid.minor = element_blank())

    print(plot)
  }
}


#' Returns a data frame containing only the categorical columns of the original data frame
#'
#' @param data Any data frame.
#'
#' @importFrom dplyr select
#' @importFrom magrittr %>%
#'
#' @return A subset of numeric variables from the original data frame.
filter_categorical <- function(data) {

  if (!is.data.frame(data)) {
    stop("Input must be a data frame!")
  }

  categorical_cols <- sapply(data, is.factor)

  return(data %>%
           select(which(categorical_cols)))
}
