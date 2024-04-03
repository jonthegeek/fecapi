#' Basic stop-gap parsing
#'
#' @inheritParams httr2::resp_body_json
#'
#' @return A tibble of results.
#' @keywords internal
.response_parser <- function(resp) {
  tibblify::tibblify(httr2::resp_body_json(resp)$results, unspecified = "list")
}
