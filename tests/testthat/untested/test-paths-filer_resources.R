# These tests were generated by the {beekeeper} package, based on the paths
# element from the source API description. You will likely need to supply
# arguments for the tests to succeed. We recommend expanding these tests to
# check for specific expectations, rather than simply using a snapshot.

with_mock_dir("api/path/filer_resources", {
  test_that("fec_get_rad_analyst() returns expected result", {
    expect_snapshot({
      test_result <- fec_get_rad_analyst(min_assignment_update_date, max_assignment_update_date, analyst_short_id, email, page, sort_nulls_last, title, sort_hide_null, committee_id, name, telephone_ext, analyst_id, sort_null_only, per_page, sort)
      test_result
    })
  })

  test_that("fec_get_state_election_office() returns expected result", {
    expect_snapshot({
      test_result <- fec_get_state_election_office(sort_null_only, sort_nulls_last, per_page, state, sort_hide_null, sort, page)
      test_result
    })
  })
})
