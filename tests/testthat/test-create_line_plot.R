test_that("create_line_plot works", {

  #Check for length of ggplot object --> 9
  correct_length <- 9
  my_length <- length(create_line_plot(mtcars))
  expect_equal(my_length, correct_length)

  # Check for ggplot object
  expect_type(create_line_plot(mtcars), "list")

})

test_that("check for if line plot stops due to incapatable column", {
  a <- c(1,2)
  b <- c('pink', 'green')
  df <- numeric_columns(data.frame(a,b))
  expect_type(df, "double")
})
