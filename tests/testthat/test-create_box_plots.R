test_that("create_box_plots works", {
  correct_result <-

  my_result <- give_candygrams()

  expect_equal(my_result, correct_result)
})

test_that("summary_function works", {
  correct_result <-

    my_result <- give_candygrams()

  expect_equal(my_result, correct_result)
})
