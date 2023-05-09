

test_that("create_bar_plots works", {

  #Checking that the length of the returned object is zero
  correct_length <- 0
  function_length <- length(create_bar_plots(iris))
  expect_equal(correct_length, function_length)

})

test_that("filter_categorical works", {

  my_result <- filter_categorical(iris)

  #Returns "list", which is really a data frame.
  expect_type(my_result, "list")

})
