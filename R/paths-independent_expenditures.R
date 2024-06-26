# These functions were generated by the {beekeeper} package, based on the paths
# element from the source API description. You should carefully review these
# functions. Missing documentation is tagged with "BKTODO" to make it easier for
# you to search for issues.

#' Get schedules schedule e
#'
#' Schedule E covers the line item expenditures for independent expenditures. For example, if a super PAC bought ads on TV to oppose a federal candidate, each ad purchase would be recorded here with the expenditure amount, name and id of the candidate, and whether the ad supported or opposed the candidate. An independent expenditure is an expenditure for a communication &quot;expressly advocating the election or defeat of a clearly identified candidate that is not made in cooperation, consultation, or concert with, or at the request or suggestion of, a candidate, a candidate’s authorized committee, or their agents, or a political party or its agents.&quot; Aggregates by candidate do not include 24 and 48 hour reports. This ensures we don't double count expenditures and the totals are more accurate. You can still find the information from 24 and 48 hour reports in `/schedule/schedule_e/`. Due to the large quantity of Schedule E filings, this endpoint is not paginated by page number. Instead, you can request the next page of results by adding the values in the `last_indexes` object from `pagination` to the URL of your last request. For example, when sorting by `expenditure_amount`, you might receive a page of results with the following pagination information: ``` &quot;pagination&quot;: { &quot;count&quot;: 152623, &quot;last_indexes&quot;: { &quot;last_index&quot;: &quot;3023037&quot;, &quot;last_expenditure_amount&quot;: -17348.5 }, &quot;per_page&quot;: 20, &quot;pages&quot;: 7632 } } ``` To fetch the next page of sorted results, append `last_index=3023037` and `last_expenditure_amount=` to the URL. We strongly advise paging through these results by using the sort indices (defaults to sort by disbursement date, e.g. `last_disbursement_date`), otherwise some resources may be unintentionally filtered out. This resource uses keyset pagination to improve query performance and these indices are required to properly page through this large dataset. Note: because the Schedule E data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned.
#'
#' @inheritParams fec_call_api
#' @param max_dissemination_date Selects all items distributed by this committee before this date
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param payee_name Name of the entity that received the payment.
#' @param q_spender Keyword search for spender name or ID
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param last_index Index of last result from previous page
#' @param min_dissemination_date Selects all items distributed by this committee after this date
#' @param candidate_office_state US state or territory
#' @param filing_form The form where the underlying data comes from, for example, Form 1 would appear as F1: - F1 Statement of Organization - F1M Notification of Multicandidate Status - F2 Statement of Candidacy - F3 Report of Receipts and Disbursements for an Authorized Committee - F3P Report of Receipts and Disbursements by an Authorized Committee of a Candidate for The Office of President or Vice President - F3L Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs - F3X Report of Receipts and Disbursements for other than an Authorized Committee - F4 Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention - F5 Report of Independent Expenditures Made and Contributions Received - F6 48 Hour Notice of Contributions/Loans Received - F7 Report of Communication Costs by Corporations and Membership Organizations - F8 Debt Settlement Plan - F9 24 Hour Notice of Disbursements for Electioneering Communications - F13 Report of Donations Accepted for Inaugural Committee - F99 Miscellaneous Text - FRQ Request for Additional Information
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param max_amount Filter for all amounts less than a value.
#' @param max_image_number Maxium image number of the page where the schedule item is reported
#' @param min_filing_date Selects all filings received after this date
#' @param cycle Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.
#' @param sort_nulls_last Toggle that sorts null values last
#' @param support_oppose_indicator Explains if the money was spent in order to support or oppose a candidate or candidates. (Coded S or O for support or oppose.) This indicator applies to independent expenditures and communication costs.
#' @param candidate_office Federal office candidate runs for: H, S or P
#' @param is_notice Record filed as 24- or 48-hour notice.
#' @param line_number Filter for form and line number using the following format: `FORM-LINENUMBER`. For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
#' @param last_expenditure_amount When sorting by `expenditure_amount`, this is populated with the `expenditure_amount` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.
#' @param last_expenditure_date When sorting by `expenditure_date`, this is populated with the `expenditure_date` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.
#' @param candidate_id A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.
#' @param last_office_total_ytd When sorting by `office_total_ytd`, this is populated with the `office_total_ytd` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.'
#' @param last_support_oppose_indicator When sorting by `support_oppose_indicator`, this is populated with the `support_oppose_indicator` of the last result. However, you will need to pass the index of that last result to `last_index` to get the next page.'
#' @param min_date Minimum date
#' @param candidate_party Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
#' @param committee_id A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.
#' @param min_image_number Minium image number of the page where the schedule item is reported
#' @param max_filing_date Selects all filings received before this date
#' @param candidate_office_district Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
#' @param min_amount Filter for all amounts greater than a value.
#' @param image_number An unique identifier for each page where the electronic or paper filing is reported.
#' @param sort Provide a field to sort by. Use `-` for descending order.
#' @param max_date Maximum date
#' @param most_recent The report associated with the transaction is either new or is the most-recently filed amendment. Undetermined version (`null`) is always included.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_schedules_schedule_e <- function(max_dissemination_date, sort_hide_null, payee_name, q_spender, per_page, last_index, min_dissemination_date, candidate_office_state, filing_form, sort_null_only, max_amount, max_image_number, min_filing_date, cycle, sort_nulls_last, support_oppose_indicator, candidate_office, is_notice, line_number, last_expenditure_amount, last_expenditure_date, candidate_id, last_office_total_ytd, last_support_oppose_indicator, min_date, candidate_party, committee_id, min_image_number, max_filing_date, candidate_office_district, min_amount, image_number, sort, max_date, most_recent, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = "/schedules/schedule_e/",
    method = "get",
    api_key = api_key,
    query = list(max_dissemination_date = max_dissemination_date, sort_hide_null = sort_hide_null, payee_name = payee_name, q_spender = q_spender, per_page = per_page, last_index = last_index, min_dissemination_date = min_dissemination_date, candidate_office_state = candidate_office_state, filing_form = filing_form, sort_null_only = sort_null_only, max_amount = max_amount, max_image_number = max_image_number, min_filing_date = min_filing_date, cycle = cycle, sort_nulls_last = sort_nulls_last, support_oppose_indicator = support_oppose_indicator, candidate_office = candidate_office, is_notice = is_notice, line_number = line_number, last_expenditure_amount = last_expenditure_amount, last_expenditure_date = last_expenditure_date, candidate_id = candidate_id, last_office_total_ytd = last_office_total_ytd, last_support_oppose_indicator = last_support_oppose_indicator, min_date = min_date, candidate_party = candidate_party, committee_id = committee_id, min_image_number = min_image_number, max_filing_date = max_filing_date, candidate_office_district = candidate_office_district, min_amount = min_amount, image_number = image_number, sort = sort, max_date = max_date, most_recent = most_recent)
  )
}

#' Get schedules schedule e by candidate
#'
#' Schedule E receipts aggregated by recipient candidate. To avoid double counting, memoed items are not included.
#'
#' @inheritParams fec_call_api
#' @param office Federal office candidate runs for: H, S or P
#' @param candidate_id A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.
#' @param cycle Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.
#' @param district Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
#' @param state US state or territory where a candidate runs for office
#' @param page For paginating through results, starting at page 1
#' @param support_oppose Support or opposition
#' @param election_full `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
#' @param committee_id A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param sort_nulls_last Toggle that sorts null values last
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param sort Provide a field to sort by. Use `-` for descending order.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_schedules_schedule_e_by_candidate <- function(office, candidate_id, cycle, district, state, page, support_oppose, election_full, committee_id, sort_hide_null, sort_nulls_last, sort_null_only, per_page, sort, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = "/schedules/schedule_e/by_candidate/",
    method = "get",
    api_key = api_key,
    query = list(office = office, candidate_id = candidate_id, cycle = cycle, district = district, state = state, page = page, support_oppose = support_oppose, election_full = election_full, committee_id = committee_id, sort_hide_null = sort_hide_null, sort_nulls_last = sort_nulls_last, sort_null_only = sort_null_only, per_page = per_page, sort = sort)
  )
}

#' Get schedules schedule e efile
#'
#' Efiling endpoints provide real-time campaign finance data received from electronic filers. Efiling endpoints only contain the most recent four months of data and don't contain the processed and coded data that you can find on other endpoints.
#'
#' @inheritParams fec_call_api
#' @param spender_name The name of the committee. If a committee changes its name, the most recent name will be shown. Committee names are not unique. Use committee_id for looking up records.
#' @param min_expenditure_date Selects all items expended by this committee after this date
#' @param sort_nulls_last Toggle that sorts null values last
#' @param max_dissemination_date Selects all items distributed by this committee before this date
#' @param support_oppose_indicator Explains if the money was spent in order to support or oppose a candidate or candidates. (Coded S or O for support or oppose.) This indicator applies to independent expenditures and communication costs.
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param candidate_office Federal office candidate runs for: H, S or P
#' @param is_notice Record filed as 24- or 48-hour notice.
#' @param payee_name Name of the entity that received the payment.
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param candidate_search Search for candidates by candiate id or candidate first or last name
#' @param max_expenditure_amount Selects all items expended by this committee less than this amount
#' @param min_dissemination_date Selects all items distributed by this committee after this date
#' @param min_filed_date Timestamp of electronic or paper record that FEC received
#' @param candidate_id A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.
#' @param candidate_office_state US state or territory where a candidate runs for office
#' @param max_filed_date Timestamp of electronic or paper record that FEC received
#' @param page For paginating through results, starting at page 1
#' @param min_expenditure_amount Selects all items expended by this committee greater than this amount
#' @param committee_id A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.
#' @param candidate_party Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
#' @param max_expenditure_date Selects all items expended by this committee before this date
#' @param filing_form The form where the underlying data comes from, for example, Form 1 would appear as F1: - F1 Statement of Organization - F1M Notification of Multicandidate Status - F2 Statement of Candidacy - F3 Report of Receipts and Disbursements for an Authorized Committee - F3P Report of Receipts and Disbursements by an Authorized Committee of a Candidate for The Office of President or Vice President - F3L Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs - F3X Report of Receipts and Disbursements for other than an Authorized Committee - F4 Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention - F5 Report of Independent Expenditures Made and Contributions Received - F6 48 Hour Notice of Contributions/Loans Received - F7 Report of Communication Costs by Corporations and Membership Organizations - F8 Debt Settlement Plan - F9 24 Hour Notice of Disbursements for Electioneering Communications - F13 Report of Donations Accepted for Inaugural Committee - F99 Miscellaneous Text - FRQ Request for Additional Information
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param candidate_office_district Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
#' @param image_number An unique identifier for each page where the electronic or paper filing is reported.
#' @param sort Provide a field to sort by. Use `-` for descending order.
#' @param most_recent The report associated with the transaction is either new or is the most-recently filed amendment. Undetermined version (`null`) is always included.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_schedules_schedule_e_efile <- function(spender_name, min_expenditure_date, sort_nulls_last, max_dissemination_date, support_oppose_indicator, sort_hide_null, candidate_office, is_notice, payee_name, per_page, candidate_search, max_expenditure_amount, min_dissemination_date, min_filed_date, candidate_id, candidate_office_state, max_filed_date, page, min_expenditure_amount, committee_id, candidate_party, max_expenditure_date, filing_form, sort_null_only, candidate_office_district, image_number, sort, most_recent, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = "/schedules/schedule_e/efile/",
    method = "get",
    api_key = api_key,
    query = list(spender_name = spender_name, min_expenditure_date = min_expenditure_date, sort_nulls_last = sort_nulls_last, max_dissemination_date = max_dissemination_date, support_oppose_indicator = support_oppose_indicator, sort_hide_null = sort_hide_null, candidate_office = candidate_office, is_notice = is_notice, payee_name = payee_name, per_page = per_page, candidate_search = candidate_search, max_expenditure_amount = max_expenditure_amount, min_dissemination_date = min_dissemination_date, min_filed_date = min_filed_date, candidate_id = candidate_id, candidate_office_state = candidate_office_state, max_filed_date = max_filed_date, page = page, min_expenditure_amount = min_expenditure_amount, committee_id = committee_id, candidate_party = candidate_party, max_expenditure_date = max_expenditure_date, filing_form = filing_form, sort_null_only = sort_null_only, candidate_office_district = candidate_office_district, image_number = image_number, sort = sort, most_recent = most_recent)
  )
}

#' Get schedules schedule e totals by candidate
#'
#' Total independent expenditure on supported or opposed candidates by cycle or candidate election year.
#'
#' @inheritParams fec_call_api
#' @param candidate_id A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.
#' @param sort_nulls_last Toggle that sorts null values last
#' @param page For paginating through results, starting at page 1
#' @param cycle Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param election_full `True` indicates that full election period of a candidate. `False` indicates that two year election cycle.
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param sort Provide a field to sort by. Use `-` for descending order.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_schedules_schedule_e_totals_by_candidate <- function(candidate_id, sort_nulls_last, page, cycle, sort_hide_null, election_full, sort_null_only, per_page, sort, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = "/schedules/schedule_e/totals/by_candidate/",
    method = "get",
    api_key = api_key,
    query = list(candidate_id = candidate_id, sort_nulls_last = sort_nulls_last, page = page, cycle = cycle, sort_hide_null = sort_hide_null, election_full = election_full, sort_null_only = sort_null_only, per_page = per_page, sort = sort)
  )
}
