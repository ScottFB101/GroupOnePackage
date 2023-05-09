test_that("create_scatter_plot works", {

  #Checking length of ggplot object is 9
  correct_length <- 9
  my_length <- length(create_box_plots(mtcars))
  expect_equal(my_length, correct_length)

  #Checking that a ggplot object is returned
  expect_type(create_box_plots(mtcars), "list")

})

test_that("check_numeric_columns works", {
  #creating a dataframe in which there is one numeric and one character column
  df <- data.frame(c(1, 2), c('red', 'blue'))
  df <- numeric_columns(df)
  expect_equal(ncol(df), 1)
})
