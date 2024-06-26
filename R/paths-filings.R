# These functions were generated by the {beekeeper} package, based on the paths
# element from the source API description. You should carefully review these
# functions. Missing documentation is tagged with "BKTODO" to make it easier for
# you to search for issues.

#' Get candidate candidate id filings
#'
#' All official records and reports filed by or delivered to the FEC. Note: because the filings data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned.
#'
#' @inheritParams fec_call_api
#' @param office Federal office candidate runs for: H, S or P
#' @param file_number Filing ID number
#' @param form_category The forms filed are categorized based on the nature of the filing: - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13 - NOTICE F5, F24, F6, F9, F10, F11 - STATEMENT F1, F2 - OTHER F1M, F8, F99, F12, FRQ
#' @param cycle Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.
#' @param district Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
#' @param document_type The type of document for documents other than reports: - 2 24 Hour Contribution Notice - 4 48 Hour Contribution Notice - A Debt Settlement Statement - B Acknowledgment of Receipt of Debt Settlement Statement - C RFAI: Debt Settlement First Notice - D Commission Debt Settlement Review - E Commission Response TO Debt Settlement Request - F Administrative Termination - G Debt Settlement Plan Amendment - H Disavowal Notice - I Disavowal Response - J Conduit Report - K Termination Approval - L Repeat Non-Filer Notice - M Filing Frequency Change Notice - N Paper Amendment to Electronic Report - O Acknowledgment of Filing Frequency Change - S RFAI: Debt Settlement Second - T Miscellaneous Report TO FEC - V Repeat Violation Notice (441A OR 441B) - P Notice of Paper Filing - R F3L Filing Frequency Change Notice - Q Acknowledgment of F3L Filing Frequency Change - U Unregistered Committee Notice
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param state US state or territory where a candidate runs for office
#' @param amendment_indicator Amendent types: -N new -A amendment -T terminated -C consolidated -M multi-candidate -S secondary NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.
#' @param sort_nulls_last Toggle that sorts null values last
#' @param is_amended False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.
#' @param filer_type The method used to file with the FEC, either electronic or on paper.
#' @param max_receipt_date Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param primary_general_indicator Primary, general or special election indicator.
#' @param request_type Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed: - 1 Statement of Organization - 2 Report of Receipts and Expenditures (Form 3 and 3X) - 3 Second Notice - Reports - 4 Request for Additional Information - 5 Informational - Reports - 6 Second Notice - Statement of Organization - 7 Failure to File - 8 From Public Disclosure - 9 From Multi Candidate Status
#' @param report_year Forms with coverage date - year from the coverage ending date. Forms without coverage date - year from the receipt date.
#' @param form_type The form where the underlying data comes from, for example, Form 1 would appear as F1: - F1 Statement of Organization - F1M Notification of Multicandidate Status - F2 Statement of Candidacy - F3 Report of Receipts and Disbursements for an Authorized Committee - F3P Report of Receipts and Disbursements by an Authorized Committee of a Candidate for The Office of President or Vice President - F3L Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs - F3X Report of Receipts and Disbursements for other than an Authorized Committee - F4 Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention - F5 Report of Independent Expenditures Made and Contributions Received - F6 48 Hour Notice of Contributions/Loans Received - F7 Report of Communication Costs by Corporations and Membership Organizations - F8 Debt Settlement Plan - F9 24 Hour Notice of Disbursements for Electioneering Communications - F13 Report of Donations Accepted for Inaugural Committee - F99 Miscellaneous Text - FRQ Request for Additional Information
#' @param committee_type The one-letter type code of the organization: - C communication cost - D delegate - E electioneering communication - H House - I independent expenditure filer (not a committee) - N PAC - nonqualified - O independent expenditure-only (super PACs) - P presidential - Q PAC - qualified - S Senate - U single candidate independent expenditure - V PAC with non-contribution account, nonqualified - W PAC with non-contribution account, qualified - X party, nonqualified - Y party, qualified - Z national party non-federal account
#' @param beginning_image_number Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.
#' @param page For paginating through results, starting at page 1
#' @param sort Provide a field to sort by. Use `-` for descending order. ex: `-case_no`
#' @param min_receipt_date Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param q_filer Keyword search for filer name or ID
#' @param report_type Name of report where the underlying data comes from: - 10D Pre-Election - 10G Pre-General - 10P Pre-Primary - 10R Pre-Run-Off - 10S Pre-Special - 12C Pre-Convention - 12G Pre-General - 12P Pre-Primary - 12R Pre-Run-Off - 12S Pre-Special - 30D Post-Election - 30G Post-General - 30P Post-Primary - 30R Post-Run-Off - 30S Post-Special - 60D Post-Convention - M1 January Monthly - M10 October Monthly - M11 November Monthly - M12 December Monthly - M2 February Monthly - M3 March Monthly - M4 April Monthly - M5 May Monthly - M6 June Monthly - M7 July Monthly - M8 August Monthly - M9 September Monthly - MY Mid-Year Report - Q1 April Quarterly - Q2 July Quarterly - Q3 October Quarterly - TER Termination Report - YE Year-End - ADJ COMP ADJUST AMEND - CA COMPREHENSIVE AMEND - 90S Post Inaugural Supplement - 90D Post Inaugural - 48 48 Hour Notification - 24 24 Hour Notification - M7S July Monthly/Semi-Annual - MSA Monthly Semi-Annual (MY) - MYS Monthly Year End/Semi-Annual - Q2S July Quarterly/Semi-Annual - QSA Quarterly Semi-Annual (MY) - QYS Quarterly Year End/Semi-Annual - QYE Quarterly Semi-Annual (YE) - QMS Quarterly Mid-Year/ Semi-Annual - MSY Monthly Semi-Annual (YE)
#' @param party Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
#' @param most_recent Report is either new or is the most-recently filed amendment
#' @param candidate_id A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_candidate_candidate_id_filings <- function(office, file_number, form_category, cycle, district, document_type, sort_hide_null, state, amendment_indicator, sort_nulls_last, is_amended, filer_type, max_receipt_date, per_page, primary_general_indicator, request_type, report_year, form_type, committee_type, beginning_image_number, page, sort, min_receipt_date, sort_null_only, q_filer, report_type, party, most_recent, candidate_id, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = c("/candidate/{candidate_id}/filings/", candidate_id = candidate_id),
    method = "get",
    api_key = api_key,
    query = list(office = office, file_number = file_number, form_category = form_category, cycle = cycle, district = district, document_type = document_type, sort_hide_null = sort_hide_null, state = state, amendment_indicator = amendment_indicator, sort_nulls_last = sort_nulls_last, is_amended = is_amended, filer_type = filer_type, max_receipt_date = max_receipt_date, per_page = per_page, primary_general_indicator = primary_general_indicator, request_type = request_type, report_year = report_year, form_type = form_type, committee_type = committee_type, beginning_image_number = beginning_image_number, page = page, sort = sort, min_receipt_date = min_receipt_date, sort_null_only = sort_null_only, q_filer = q_filer, report_type = report_type, party = party, most_recent = most_recent)
  )
}

#' Get committee committee id filings
#'
#' All official records and reports filed by or delivered to the FEC. Note: because the filings data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned.
#'
#' @inheritParams fec_call_api
#' @param office Federal office candidate runs for: H, S or P
#' @param file_number Filing ID number
#' @param form_category The forms filed are categorized based on the nature of the filing: - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13 - NOTICE F5, F24, F6, F9, F10, F11 - STATEMENT F1, F2 - OTHER F1M, F8, F99, F12, FRQ
#' @param cycle Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.
#' @param district Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
#' @param document_type The type of document for documents other than reports: - 2 24 Hour Contribution Notice - 4 48 Hour Contribution Notice - A Debt Settlement Statement - B Acknowledgment of Receipt of Debt Settlement Statement - C RFAI: Debt Settlement First Notice - D Commission Debt Settlement Review - E Commission Response TO Debt Settlement Request - F Administrative Termination - G Debt Settlement Plan Amendment - H Disavowal Notice - I Disavowal Response - J Conduit Report - K Termination Approval - L Repeat Non-Filer Notice - M Filing Frequency Change Notice - N Paper Amendment to Electronic Report - O Acknowledgment of Filing Frequency Change - S RFAI: Debt Settlement Second - T Miscellaneous Report TO FEC - V Repeat Violation Notice (441A OR 441B) - P Notice of Paper Filing - R F3L Filing Frequency Change Notice - Q Acknowledgment of F3L Filing Frequency Change - U Unregistered Committee Notice
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param state US state or territory where a candidate runs for office
#' @param amendment_indicator Amendent types: -N new -A amendment -T terminated -C consolidated -M multi-candidate -S secondary NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.
#' @param sort_nulls_last Toggle that sorts null values last
#' @param is_amended False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.
#' @param filer_type The method used to file with the FEC, either electronic or on paper.
#' @param max_receipt_date Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param primary_general_indicator Primary, general or special election indicator.
#' @param request_type Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed: - 1 Statement of Organization - 2 Report of Receipts and Expenditures (Form 3 and 3X) - 3 Second Notice - Reports - 4 Request for Additional Information - 5 Informational - Reports - 6 Second Notice - Statement of Organization - 7 Failure to File - 8 From Public Disclosure - 9 From Multi Candidate Status
#' @param report_year Forms with coverage date - year from the coverage ending date. Forms without coverage date - year from the receipt date.
#' @param form_type The form where the underlying data comes from, for example, Form 1 would appear as F1: - F1 Statement of Organization - F1M Notification of Multicandidate Status - F2 Statement of Candidacy - F3 Report of Receipts and Disbursements for an Authorized Committee - F3P Report of Receipts and Disbursements by an Authorized Committee of a Candidate for The Office of President or Vice President - F3L Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs - F3X Report of Receipts and Disbursements for other than an Authorized Committee - F4 Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention - F5 Report of Independent Expenditures Made and Contributions Received - F6 48 Hour Notice of Contributions/Loans Received - F7 Report of Communication Costs by Corporations and Membership Organizations - F8 Debt Settlement Plan - F9 24 Hour Notice of Disbursements for Electioneering Communications - F13 Report of Donations Accepted for Inaugural Committee - F99 Miscellaneous Text - FRQ Request for Additional Information
#' @param committee_type The one-letter type code of the organization: - C communication cost - D delegate - E electioneering communication - H House - I independent expenditure filer (not a committee) - N PAC - nonqualified - O independent expenditure-only (super PACs) - P presidential - Q PAC - qualified - S Senate - U single candidate independent expenditure - V PAC with non-contribution account, nonqualified - W PAC with non-contribution account, qualified - X party, nonqualified - Y party, qualified - Z national party non-federal account
#' @param beginning_image_number Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.
#' @param page For paginating through results, starting at page 1
#' @param sort Provide a field to sort by. Use `-` for descending order. ex: `-case_no`
#' @param min_receipt_date Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param q_filer Keyword search for filer name or ID
#' @param report_type Name of report where the underlying data comes from: - 10D Pre-Election - 10G Pre-General - 10P Pre-Primary - 10R Pre-Run-Off - 10S Pre-Special - 12C Pre-Convention - 12G Pre-General - 12P Pre-Primary - 12R Pre-Run-Off - 12S Pre-Special - 30D Post-Election - 30G Post-General - 30P Post-Primary - 30R Post-Run-Off - 30S Post-Special - 60D Post-Convention - M1 January Monthly - M10 October Monthly - M11 November Monthly - M12 December Monthly - M2 February Monthly - M3 March Monthly - M4 April Monthly - M5 May Monthly - M6 June Monthly - M7 July Monthly - M8 August Monthly - M9 September Monthly - MY Mid-Year Report - Q1 April Quarterly - Q2 July Quarterly - Q3 October Quarterly - TER Termination Report - YE Year-End - ADJ COMP ADJUST AMEND - CA COMPREHENSIVE AMEND - 90S Post Inaugural Supplement - 90D Post Inaugural - 48 48 Hour Notification - 24 24 Hour Notification - M7S July Monthly/Semi-Annual - MSA Monthly Semi-Annual (MY) - MYS Monthly Year End/Semi-Annual - Q2S July Quarterly/Semi-Annual - QSA Quarterly Semi-Annual (MY) - QYS Quarterly Year End/Semi-Annual - QYE Quarterly Semi-Annual (YE) - QMS Quarterly Mid-Year/ Semi-Annual - MSY Monthly Semi-Annual (YE)
#' @param party Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
#' @param most_recent Report is either new or is the most-recently filed amendment
#' @param committee_id A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_committee_committee_id_filings <- function(office, file_number, form_category, cycle, district, document_type, sort_hide_null, state, amendment_indicator, sort_nulls_last, is_amended, filer_type, max_receipt_date, per_page, primary_general_indicator, request_type, report_year, form_type, committee_type, beginning_image_number, page, sort, min_receipt_date, sort_null_only, q_filer, report_type, party, most_recent, committee_id, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = c("/committee/{committee_id}/filings/", committee_id = committee_id),
    method = "get",
    api_key = api_key,
    query = list(office = office, file_number = file_number, form_category = form_category, cycle = cycle, district = district, document_type = document_type, sort_hide_null = sort_hide_null, state = state, amendment_indicator = amendment_indicator, sort_nulls_last = sort_nulls_last, is_amended = is_amended, filer_type = filer_type, max_receipt_date = max_receipt_date, per_page = per_page, primary_general_indicator = primary_general_indicator, request_type = request_type, report_year = report_year, form_type = form_type, committee_type = committee_type, beginning_image_number = beginning_image_number, page = page, sort = sort, min_receipt_date = min_receipt_date, sort_null_only = sort_null_only, q_filer = q_filer, report_type = report_type, party = party, most_recent = most_recent)
  )
}

#' Get filings
#'
#' All official records and reports filed by or delivered to the FEC. Note: because the filings data includes many records, counts for large result sets are approximate; you will want to page through the records until no records are returned.
#'
#' @inheritParams fec_call_api
#' @param office Federal office candidate runs for: H, S or P
#' @param file_number Filing ID number
#' @param form_category The forms filed are categorized based on the nature of the filing: - REPORT F3, F3X, F3P, F3L, F4, F5, F7, F13 - NOTICE F5, F24, F6, F9, F10, F11 - STATEMENT F1, F2 - OTHER F1M, F8, F99, F12, FRQ
#' @param cycle Filter records to only those that were applicable to a given two-year period.The cycle begins with an odd year and is named for its ending, even year.
#' @param district Two-digit US House distirict of the office the candidate is running for. Presidential, Senate and House at-large candidates will have District 00.
#' @param document_type The type of document for documents other than reports: - 2 24 Hour Contribution Notice - 4 48 Hour Contribution Notice - A Debt Settlement Statement - B Acknowledgment of Receipt of Debt Settlement Statement - C RFAI: Debt Settlement First Notice - D Commission Debt Settlement Review - E Commission Response TO Debt Settlement Request - F Administrative Termination - G Debt Settlement Plan Amendment - H Disavowal Notice - I Disavowal Response - J Conduit Report - K Termination Approval - L Repeat Non-Filer Notice - M Filing Frequency Change Notice - N Paper Amendment to Electronic Report - O Acknowledgment of Filing Frequency Change - S RFAI: Debt Settlement Second - T Miscellaneous Report TO FEC - V Repeat Violation Notice (441A OR 441B) - P Notice of Paper Filing - R F3L Filing Frequency Change Notice - Q Acknowledgment of F3L Filing Frequency Change - U Unregistered Committee Notice
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param state US state or territory where a candidate runs for office
#' @param amendment_indicator Amendent types: -N new -A amendment -T terminated -C consolidated -M multi-candidate -S secondary NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.
#' @param sort_nulls_last Toggle that sorts null values last
#' @param is_amended False indicates that a report is the most recent. True indicates that the report has been superseded by an amendment.
#' @param filer_type The method used to file with the FEC, either electronic or on paper.
#' @param max_receipt_date Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param primary_general_indicator Primary, general or special election indicator.
#' @param request_type Requests for additional information (RFAIs) sent to filers. The request type is based on the type of document filed: - 1 Statement of Organization - 2 Report of Receipts and Expenditures (Form 3 and 3X) - 3 Second Notice - Reports - 4 Request for Additional Information - 5 Informational - Reports - 6 Second Notice - Statement of Organization - 7 Failure to File - 8 From Public Disclosure - 9 From Multi Candidate Status
#' @param report_year Forms with coverage date - year from the coverage ending date. Forms without coverage date - year from the receipt date.
#' @param form_type The form where the underlying data comes from, for example, Form 1 would appear as F1: - F1 Statement of Organization - F1M Notification of Multicandidate Status - F2 Statement of Candidacy - F3 Report of Receipts and Disbursements for an Authorized Committee - F3P Report of Receipts and Disbursements by an Authorized Committee of a Candidate for The Office of President or Vice President - F3L Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs - F3X Report of Receipts and Disbursements for other than an Authorized Committee - F4 Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention - F5 Report of Independent Expenditures Made and Contributions Received - F6 48 Hour Notice of Contributions/Loans Received - F7 Report of Communication Costs by Corporations and Membership Organizations - F8 Debt Settlement Plan - F9 24 Hour Notice of Disbursements for Electioneering Communications - F13 Report of Donations Accepted for Inaugural Committee - F99 Miscellaneous Text - FRQ Request for Additional Information
#' @param candidate_id A unique identifier assigned to each candidate registered with the FEC. If a person runs for several offices, that person will have separate candidate IDs for each office.
#' @param committee_type The one-letter type code of the organization: - C communication cost - D delegate - E electioneering communication - H House - I independent expenditure filer (not a committee) - N PAC - nonqualified - O independent expenditure-only (super PACs) - P presidential - Q PAC - qualified - S Senate - U single candidate independent expenditure - V PAC with non-contribution account, nonqualified - W PAC with non-contribution account, qualified - X party, nonqualified - Y party, qualified - Z national party non-federal account
#' @param beginning_image_number Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.
#' @param page For paginating through results, starting at page 1
#' @param sort Provide a field to sort by. Use `-` for descending order. ex: `-case_no`
#' @param committee_id A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.
#' @param min_receipt_date Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param q_filer Keyword search for filer name or ID
#' @param report_type Name of report where the underlying data comes from: - 10D Pre-Election - 10G Pre-General - 10P Pre-Primary - 10R Pre-Run-Off - 10S Pre-Special - 12C Pre-Convention - 12G Pre-General - 12P Pre-Primary - 12R Pre-Run-Off - 12S Pre-Special - 30D Post-Election - 30G Post-General - 30P Post-Primary - 30R Post-Run-Off - 30S Post-Special - 60D Post-Convention - M1 January Monthly - M10 October Monthly - M11 November Monthly - M12 December Monthly - M2 February Monthly - M3 March Monthly - M4 April Monthly - M5 May Monthly - M6 June Monthly - M7 July Monthly - M8 August Monthly - M9 September Monthly - MY Mid-Year Report - Q1 April Quarterly - Q2 July Quarterly - Q3 October Quarterly - TER Termination Report - YE Year-End - ADJ COMP ADJUST AMEND - CA COMPREHENSIVE AMEND - 90S Post Inaugural Supplement - 90D Post Inaugural - 48 48 Hour Notification - 24 24 Hour Notification - M7S July Monthly/Semi-Annual - MSA Monthly Semi-Annual (MY) - MYS Monthly Year End/Semi-Annual - Q2S July Quarterly/Semi-Annual - QSA Quarterly Semi-Annual (MY) - QYS Quarterly Year End/Semi-Annual - QYE Quarterly Semi-Annual (YE) - QMS Quarterly Mid-Year/ Semi-Annual - MSY Monthly Semi-Annual (YE)
#' @param party Three-letter code for the party affiliated with a candidate or committee. For example, DEM for Democratic Party and REP for Republican Party.
#' @param most_recent Report is either new or is the most-recently filed amendment
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_filings <- function(office, file_number, form_category, cycle, district, document_type, sort_hide_null, state, amendment_indicator, sort_nulls_last, is_amended, filer_type, max_receipt_date, per_page, primary_general_indicator, request_type, report_year, form_type, candidate_id, committee_type, beginning_image_number, page, sort, committee_id, min_receipt_date, sort_null_only, q_filer, report_type, party, most_recent, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = "/filings/",
    method = "get",
    api_key = api_key,
    query = list(office = office, file_number = file_number, form_category = form_category, cycle = cycle, district = district, document_type = document_type, sort_hide_null = sort_hide_null, state = state, amendment_indicator = amendment_indicator, sort_nulls_last = sort_nulls_last, is_amended = is_amended, filer_type = filer_type, max_receipt_date = max_receipt_date, per_page = per_page, primary_general_indicator = primary_general_indicator, request_type = request_type, report_year = report_year, form_type = form_type, candidate_id = candidate_id, committee_type = committee_type, beginning_image_number = beginning_image_number, page = page, sort = sort, committee_id = committee_id, min_receipt_date = min_receipt_date, sort_null_only = sort_null_only, q_filer = q_filer, report_type = report_type, party = party, most_recent = most_recent)
  )
}

#' Get operations log
#'
#' The Operations log contains details of each report loaded into the database. It is primarily used as status check to determine when all of the data processes, from initial entry through review are complete.
#'
#' @inheritParams fec_call_api
#' @param max_coverage_end_date Ending date of the reporting period before this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param sort_nulls_last Toggle that sorts null values last
#' @param amendment_indicator Amendent types: -N new -A amendment -T terminated -C consolidated -M multi-candidate -S secondary NULL might be new or amendment. If amendment indicator is null and the filings is the first or first in a chain treat it as if it was a new. If it is not the first or first in a chain then treat the filing as an amendment.
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param max_receipt_date Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param min_transaction_data_complete_date Select all filings processed completely after this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param form_type The form where the underlying data comes from, for example, Form 1 would appear as F1: - F1 Statement of Organization - F1M Notification of Multicandidate Status - F2 Statement of Candidacy - F3 Report of Receipts and Disbursements for an Authorized Committee - F3P Report of Receipts and Disbursements by an Authorized Committee of a Candidate for The Office of President or Vice President - F3L Report of Contributions Bundled by Lobbyists/Registrants and Lobbyist/Registrant PACs - F3X Report of Receipts and Disbursements for other than an Authorized Committee - F4 Report of Receipts and Disbursements for a Committee or Organization Supporting a Nomination Convention - F5 Report of Independent Expenditures Made and Contributions Received - F6 48 Hour Notice of Contributions/Loans Received - F7 Report of Communication Costs by Corporations and Membership Organizations - F8 Debt Settlement Plan - F9 24 Hour Notice of Disbursements for Electioneering Communications - F13 Report of Donations Accepted for Inaugural Committee - F99 Miscellaneous Text - FRQ Request for Additional Information
#' @param max_transaction_data_complete_date Select all filings processed completely before this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param beginning_image_number Unique identifier for the electronic or paper report. This number is used to construct PDF URLs to the original document.
#' @param page For paginating through results, starting at page 1
#' @param min_coverage_end_date Ending date of the reporting period after this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param sort Provide a field to sort by. Use `-` for descending order. ex: `-case_no`
#' @param min_receipt_date Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param candidate_committee_id A unique identifier of the registered filer.
#' @param report_type Name of report where the underlying data comes from: - 10D Pre-Election - 10G Pre-General - 10P Pre-Primary - 10R Pre-Run-Off - 10S Pre-Special - 12C Pre-Convention - 12G Pre-General - 12P Pre-Primary - 12R Pre-Run-Off - 12S Pre-Special - 30D Post-Election - 30G Post-General - 30P Post-Primary - 30R Post-Run-Off - 30S Post-Special - 60D Post-Convention - M1 January Monthly - M10 October Monthly - M11 November Monthly - M12 December Monthly - M2 February Monthly - M3 March Monthly - M4 April Monthly - M5 May Monthly - M6 June Monthly - M7 July Monthly - M8 August Monthly - M9 September Monthly - MY Mid-Year Report - Q1 April Quarterly - Q2 July Quarterly - Q3 October Quarterly - TER Termination Report - YE Year-End - ADJ COMP ADJUST AMEND - CA COMPREHENSIVE AMEND - 90S Post Inaugural Supplement - 90D Post Inaugural - 48 48 Hour Notification - 24 24 Hour Notification - M7S July Monthly/Semi-Annual - MSA Monthly Semi-Annual (MY) - MYS Monthly Year End/Semi-Annual - Q2S July Quarterly/Semi-Annual - QSA Quarterly Semi-Annual (MY) - QYS Quarterly Year End/Semi-Annual - QYE Quarterly Semi-Annual (YE) - QMS Quarterly Mid-Year/ Semi-Annual - MSY Monthly Semi-Annual (YE)
#' @param report_year Forms with coverage date - year from the coverage ending date. Forms without coverage date - year from the receipt date.
#' @param status_num Status of the transactional report. -0- Transaction is entered into the system. But not verified. -1- Transaction is verified.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_operations_log <- function(max_coverage_end_date, sort_nulls_last, amendment_indicator, sort_hide_null, max_receipt_date, per_page, min_transaction_data_complete_date, form_type, max_transaction_data_complete_date, beginning_image_number, page, min_coverage_end_date, sort, min_receipt_date, sort_null_only, candidate_committee_id, report_type, report_year, status_num, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = "/operations-log/",
    method = "get",
    api_key = api_key,
    query = list(max_coverage_end_date = max_coverage_end_date, sort_nulls_last = sort_nulls_last, amendment_indicator = amendment_indicator, sort_hide_null = sort_hide_null, max_receipt_date = max_receipt_date, per_page = per_page, min_transaction_data_complete_date = min_transaction_data_complete_date, form_type = form_type, max_transaction_data_complete_date = max_transaction_data_complete_date, beginning_image_number = beginning_image_number, page = page, min_coverage_end_date = min_coverage_end_date, sort = sort, min_receipt_date = min_receipt_date, sort_null_only = sort_null_only, candidate_committee_id = candidate_committee_id, report_type = report_type, report_year = report_year, status_num = status_num)
  )
}
