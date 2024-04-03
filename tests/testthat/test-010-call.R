httptest2::with_mock_dir("api/01-call/valid", {
  test_that("Can call an endpoint without errors", {
    # A path will be auto-filled in a future version of beekeeper.
    PROVIDED_PATH <- "/candidates/"
    expect_no_error(fec_call_api(PROVIDED_PATH))
  })
})
