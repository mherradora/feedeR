context("URL")

test_that("insert missing http://", {
  expect_equal(clean.url("feeds.feedburner.com/RBloggers"), "http://feeds.feedburner.com/RBloggers")
})

context("Date/Time")

test_that("handling of date/time like 'Fri, 05 Aug 2016 13:28:00 +0000'", {
  expect_equal(parse.date("Fri, 05 Aug 2016 13:28:00 +0000"), as.POSIXct(as.POSIXct("2016-08-05 13:28:00", tz = "UTC")))
})

test_that("handling of date/time like '2016-08-05T06:28:00-07:00'", {
  expect_equal(parse.date("2016-08-05T06:28:00-07:00"), as.POSIXct(as.POSIXct("2016-08-05 13:28:00", tz = "UTC")))
})

test_that("handling of date/time like '5 Aug 2016 13:28:00'", {
  expect_equal(parse.date("5 Aug 2016 13:28:00"), as.POSIXct(as.POSIXct("2016-08-05 13:28:00", tz = "UTC")))
})

test_that("handling of date/time like '5 Aug 2016 10:28:00 -0300'", {
  expect_equal(parse.date("5 Aug 2016 10:28:00 -0300"), as.POSIXct(as.POSIXct("2016-08-05 13:28:00", tz = "UTC")))
})
