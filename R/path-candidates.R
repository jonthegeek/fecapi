#' Get candidates
#'
#' @description Fetch basic information about candidates, and use parameters to
#'   filter results to the candidates you're looking for.
#'
#'   Each result reflects a unique FEC candidate ID. That ID is particular to
#'   the candidate for a particular office sought. If a candidate runs for the
#'   same office multiple times, the ID stays the same. If the same person runs
#'   for another office — for example, a House candidate runs for a Senate
#'   office — that candidate will get a unique ID for each office.
#'
#' @inheritParams fec_call_api
#' @param office Federal office candidate runs for: H, S or P.
#'
#' @return A data.frame of candidates. Currently only returns the first 20
#'   candidates (pagination has not yet been implemented).
#' @export
fec_get_candidates <- function(office = c("H", "P", "S"),
                               api_key = Sys.getenv(
                                 "FEC_API_KEY",
                                 unset = "DEMO_KEY"
                               )) {
  office <- rlang::set_names(office, "office")

  fec_call_api(
    "candidates",
    query = rlang::list2(!!!office),
    api_key = api_key
  )
}
