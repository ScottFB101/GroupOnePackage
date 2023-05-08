#' Creates themed box plots from a raw dataframe
#'
#' @param data data.frame
#'
#'
#' @return A ggplot object
#'
#'
#'
#'
create_box_plots <- function(data) {

  data_summarized <- summaryfunction()

  ggplot(data, aes(x = category, y = value, fill = category)) +
    geom_boxplot() +
    scale_fill_hue(name = "Category") +
    labs(title = "Box Plot Example", x = "Category", y = "Value") +
    theme_minimal()

}
# Helper function
#Summarize function...
