test_that("create_box_plots works", {

  #Checking length of ggplot object is 9
  correct_length <- 9
  my_length <- length(create_box_plots(mtcars))
  expect_equal(my_length, correct_length)

  #Checking that a ggplot object is returned
  expect_type(create_box_plots(mtcars), "list")

})

test_that("check_numeric_columns works", {

  my_result <- check_numeric_columns(iris)

  #Returns "list", which is really a data frame.
  expect_type(my_result, "list")

})
