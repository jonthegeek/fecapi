# These tests were generated by the {beekeeper} package, based on the paths
# element from the source API description. You will likely need to supply
# arguments for the tests to succeed. We recommend expanding these tests to
# check for specific expectations, rather than simply using a snapshot.

with_mock_dir("api/path/dates", {
  test_that("fec_get_calendar_dates() returns expected result", {
    expect_snapshot({
      test_result <- fec_get_calendar_dates(sort_nulls_last, page, min_start_date, calendar_category_id, sort_hide_null, min_end_date, event_id, sort_null_only, per_page, description, sort, max_end_date, summary, max_start_date)
      test_result
    })
  })

  test_that("fec_get_calendar_dates_export() returns expected result", {
    expect_snapshot({
      test_result <- fec_get_calendar_dates_export(renderer, sort_nulls_last, page, min_start_date, calendar_category_id, sort_hide_null, min_end_date, event_id, sort_null_only, per_page, description, sort, max_end_date, summary, max_start_date)
      test_result
    })
  })

  test_that("fec_get_election_dates() returns expected result", {
    expect_snapshot({
      test_result <- fec_get_election_dates(max_update_date, sort_nulls_last, sort_hide_null, max_primary_general_date, min_update_date, max_create_date, per_page, min_election_date, election_party, election_type_id, page, min_create_date, min_primary_general_date, election_year, election_district, office_sought, sort_null_only, max_election_date, sort, election_state)
      test_result
    })
  })

  test_that("fec_get_reporting_dates() returns expected result", {
    expect_snapshot({
      test_result <- fec_get_reporting_dates(max_update_date, page, max_due_date, min_create_date, min_due_date, sort_hide_null, sort_nulls_last, min_update_date, max_create_date, per_page, sort_null_only, sort, report_year, report_type)
      test_result
    })
  })
})
