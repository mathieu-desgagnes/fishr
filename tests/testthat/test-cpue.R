test_that("cpue calculates simple ratio correctly", {
  expect_equal(cpue(catch = 100, effort = 10), 10)
  expect_equal(cpue(50, 25), 2)
})

test_that('cpue works with generated data', {
  data <- generate_fishing_data(n = 5)
  result <- cpue(data$catch, data$effort)
  expect_equal(
    result,
    c(34.05, 9.06, 19.23, 135.64, 6.37),
    tolerance = 1e-2
  )
})
