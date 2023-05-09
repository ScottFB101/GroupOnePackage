test_that("create_scatter_plot works", {

  #Checking length of ggplot object is 9
  correct_length <- 9
  my_length <- length(create_scatter_plot(mtcars))
  expect_equal(my_length, correct_length)

  #Checking that a ggplot object is returned
  expect_type(create_scatter_plot(mtcars), "list")

})

test_that("check scatterplot stops if only one numerical column works", {
  #creating a data frame in which there is one numeric and one character column
  a <- c(1,2)
  b <- c('red', 'blue')
  df <- numeric_columns(data.frame(a,b))
  expect_type(df, "double")
})
