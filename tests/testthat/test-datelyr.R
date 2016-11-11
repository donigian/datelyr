context("datelyr")

userDate <- "2000/01/01"

test_that("test if weekend", {
  expect_equal(is.weekend(userDate), TRUE)
})

test_that("test if weekend", {
  expect_equal(is.last_day_of_month(userDate), FALSE)
})

test_that("test get day name of week with valid date", {
  expect_equal(dayNameOfWeek(userDate), "Saturday")
})

test_that("test get day name of week with invalid date", {
})

test_that("test get day of week with valid date", {
  expect_equal(dayOfWeek(userDate), 7)
})

test_that("test day of year with valid date", {
  expect_equal(dayOfYear(userDate), 1)
})

test_that("test fiscal month of year with valid date", {
  expect_equal(fiscal_month_of_year(userDate), 7)
})

test_that("test fiscal year quarter with valid date", {
  expect_equal(fiscal_quarter(userDate), 3)
})
