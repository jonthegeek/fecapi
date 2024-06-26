# These functions were generated by the {beekeeper} package, based on the paths
# element from the source API description. You should carefully review these
# functions. Missing documentation is tagged with "BKTODO" to make it easier for
# you to search for issues.

#' Get schedules schedule c
#'
#' Schedule C shows all loans, endorsements and loan guarantees a committee receives or makes. The committee continues to report the loan until it is repaid.
#'
#' @inheritParams fec_call_api
#' @param min_incurred_date Minimum incurred date
#' @param candidate_name Name of candidate running for office
#' @param max_amount Filter for all amounts less than a value.
#' @param max_image_number Maxium image number of the page where the schedule item is reported
#' @param sort_nulls_last Toggle that sorts null values last
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param line_number Filter for form and line number using the following format: `FORM-LINENUMBER`. For example an argument such as `F3X-16` would filter down to all entries from form `F3X` line number `16`.
#' @param max_incurred_date Maximum incurred date
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param last_index Index of last result from previous page
#' @param loan_source_name Source of the loan (i.e., bank loan, brokerage account, credit card, home equity line of credit, other line of credit, or personal funds of the candidate
#' @param page For paginating through results, starting at page 1
#' @param sort Provide a field to sort by. Use `-` for descending order.
#' @param max_payment_to_date Maximum payment to date
#' @param min_payment_to_date Minimum payment to date
#' @param committee_id A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.
#' @param min_image_number Minium image number of the page where the schedule item is reported
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param image_number An unique identifier for each page where the electronic or paper filing is reported.
#' @param min_amount Filter for all amounts greater than a value.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_schedules_schedule_c <- function(min_incurred_date, candidate_name, max_amount, max_image_number, sort_nulls_last, sort_hide_null, line_number, max_incurred_date, per_page, last_index, loan_source_name, page, sort, max_payment_to_date, min_payment_to_date, committee_id, min_image_number, sort_null_only, image_number, min_amount, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = "/schedules/schedule_c/",
    method = "get",
    api_key = api_key,
    query = list(min_incurred_date = min_incurred_date, candidate_name = candidate_name, max_amount = max_amount, max_image_number = max_image_number, sort_nulls_last = sort_nulls_last, sort_hide_null = sort_hide_null, line_number = line_number, max_incurred_date = max_incurred_date, per_page = per_page, last_index = last_index, loan_source_name = loan_source_name, page = page, sort = sort, max_payment_to_date = max_payment_to_date, min_payment_to_date = min_payment_to_date, committee_id = committee_id, min_image_number = min_image_number, sort_null_only = sort_null_only, image_number = image_number, min_amount = min_amount)
  )
}

#' Get schedules schedule c sub id
#'
#' Schedule C shows all loans, endorsements and loan guarantees a committee receives or makes. The committee continues to report the loan until it is repaid.
#'
#' @inheritParams fec_call_api
#' @param sort_nulls_last Toggle that sorts null values last
#' @param per_page The number of results returned per page. Defaults to 20.
#' @param sort_null_only Toggle that filters out all rows having sort column that is non-null
#' @param sort_hide_null Hide null values on sorted column(s).
#' @param sort Provide a field to sort by. Use `-` for descending order.
#' @param page For paginating through results, starting at page 1
#' @param sub_id BKTODO: No description provided.
#' @return BKTODO: Return descriptions are not yet implemented in beekeeper
#' @export
fec_get_schedules_schedule_c_sub_id <- function(sort_nulls_last, per_page, sort_null_only, sort_hide_null, sort, page, sub_id, api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")) {
  fec_call_api(
    path = c("/schedules/schedule_c/{sub_id}/", sub_id = sub_id),
    method = "get",
    api_key = api_key,
    query = list(sort_nulls_last = sort_nulls_last, per_page = per_page, sort_null_only = sort_null_only, sort_hide_null = sort_hide_null, sort = sort, page = page)
  )
}
