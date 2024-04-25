#' Basic stop-gap parsing
#'
#' @inheritParams httr2::resp_body_json
#'
#' @return A tibble of results.
#' @keywords internal
.response_parser <- function(resp) {
  results <- httr2::resp_body_json(resp)$results
  tibblify::tibblify(results, unspecified = "list")
}
