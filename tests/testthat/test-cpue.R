test_that("cpue calculates simple ratio correctly", {
  expect_equal(cpue(catch=100, effort =10), 10)
  expect_equal(cpue(50, 25), 2)
})
