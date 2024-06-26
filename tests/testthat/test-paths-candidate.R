# These tests were generated by the {beekeeper} package, based on the paths
# element from the source API description. You will likely need to supply
# arguments for the tests to succeed. We recommend expanding these tests to
# check for specific expectations, rather than simply using a snapshot.

with_mock_dir("api/path/candidate", {
  test_that("fec_get_candidate_candidate_id() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidate_candidate_id(
        office,
        candidate_status,
        cycle,
        sort_nulls_last,
        state,
        district,
        year,
        name,
        sort_hide_null,
        federal_funds_flag,
        per_page,
        page,
        sort,
        has_raised_funds,
        election_year,
        sort_null_only,
        incumbent_challenge,
        party,
        candidate_id
      )
      test_result
    })
  })

  test_that("fec_get_candidate_candidate_id_history() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidate_candidate_id_history(sort_nulls_last, per_page, sort_null_only, sort_hide_null, sort, election_full, page, candidate_id)
      test_result
    })
  })

  test_that("fec_get_candidate_candidate_id_history_cycle() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidate_candidate_id_history_cycle(sort_nulls_last, per_page, sort_null_only, sort_hide_null, sort, election_full, page, candidate_id, cycle)
      test_result
    })
  })

  test_that("fec_get_candidate_candidate_id_totals() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidate_candidate_id_totals(sort_nulls_last, cycle, page, sort_hide_null, election_full, sort_null_only, per_page, sort, candidate_id)
      test_result
    })
  })

  test_that("fec_get_candidates() returns expected result", {
    expect_snapshot({
      test_result <- fec_get_candidates()
      test_result
    })
  })

  test_that("fec_get_candidates_search() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidates_search(office, candidate_status, cycle, district, sort_nulls_last, sort_hide_null, year, state, name, is_active_candidate, q, federal_funds_flag, per_page, candidate_id, min_first_file_date, page, sort, has_raised_funds, election_year, incumbent_challenge, sort_null_only, max_first_file_date, party)
      test_result
    })
  })

  test_that("fec_get_candidates_totals() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidates_totals(office, min_receipts, cycle, district, max_receipts, sort_hide_null, state, max_debts_owed_by_committee, sort_nulls_last, min_debts_owed_by_committee, is_active_candidate, q, federal_funds_flag, per_page, max_cash_on_hand_end_period, max_disbursements, candidate_id, page, has_raised_funds, election_full, election_year, sort_null_only, min_cash_on_hand_end_period, sort, party, min_disbursements)
      test_result
    })
  })

  test_that("fec_get_candidates_totals_aggregates() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidates_totals_aggregates(office, sort_nulls_last, district, state, min_election_cycle, sort_hide_null, is_active_candidate, per_page, max_election_cycle, aggregate_by, page, election_year, election_full, sort_null_only, sort, party)
      test_result
    })
  })

  test_that("fec_get_candidates_totals_by_office() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidates_totals_by_office(office, sort_nulls_last, page, min_election_cycle, sort_hide_null, election_year, election_full, is_active_candidate, sort_null_only, per_page, max_election_cycle, sort)
      test_result
    })
  })

  test_that("fec_get_candidates_totals_by_office_by_party() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_candidates_totals_by_office_by_party(office, sort_nulls_last, page, sort_hide_null, election_year, election_full, is_active_candidate, sort_null_only, per_page, sort)
      test_result
    })
  })

  test_that("fec_get_committee_committee_id_candidates() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_committee_committee_id_candidates(office, candidate_status, cycle, sort_nulls_last, state, district, year, name, sort_hide_null, federal_funds_flag, per_page, page, sort, has_raised_funds, election_year, sort_null_only, incumbent_challenge, party, committee_id)
      test_result
    })
  })

  test_that("fec_get_committee_committee_id_candidates_history() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_committee_committee_id_candidates_history(sort_nulls_last, per_page, sort_null_only, sort_hide_null, sort, election_full, page, committee_id)
      test_result
    })
  })

  test_that("fec_get_committee_committee_id_candidates_history_cycle() returns expected result", {
    skip()
    expect_snapshot({
      test_result <- fec_get_committee_committee_id_candidates_history_cycle(sort_nulls_last, per_page, sort_null_only, sort_hide_null, sort, election_full, page, committee_id, cycle)
      test_result
    })
  })
})
