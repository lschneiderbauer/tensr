test_that("creating d works", {
  expect_tensor_equal(
    d(3)(i, +j),
    diag(1, 3, 3) %_% .(i, +j)
  )

  expect_error(
    d(3)(i, j)
  )
})

test_that("creating e works", {
  expect_tensor_equal(
    e(i, j),
    array(c(0, -1, 1, 0), dim = c(2,2)) %_% .(i, j)
  )

  expect_error(
    e(+i, j)
  )
})
