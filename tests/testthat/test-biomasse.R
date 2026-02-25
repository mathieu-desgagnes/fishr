test_that("erreur", {
  expect_snapshot(
    biomass_index('five', 10),
    error = TRUE
  )
})

test_that("biomasse warns when catch and effort lengths differ", {
  expect_snapshot(
    biomass_index(c(100, 200, 300), c(10, 20))
  )

  expect_no_warning(biomass_index(100, 10))
})
