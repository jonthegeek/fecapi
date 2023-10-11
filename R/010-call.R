#' Call the OpenFEC API
#'
#' Generate a request to an OpenFEC endpoint.
#'
#' @inheritParams nectar::call_api
#' @param api_key An API key provided by the FEC. Get your key at
#'   https://api.open.fec.gov/developers/. We recommend storing the key in your
#'   `.Renviron` file as `FEC_API_KEY`. The default value, "DEMO_KEY", allows
#'   for limited experimentation.
#'
#' @return The response from the endpoint.
#' @export
fec_call_api <- function(path,
                         query = NULL,
                         body = NULL,
                         method = NULL,
                         api_key = Sys.getenv(
                           "FEC_API_KEY",
                           unset = "DEMO_KEY"
                         )) {
  nectar::call_api(
    base_url = "https://api.open.fec.gov/v1",
    path = path,
    query = query,
    body = body,
    method = method,
    user_agent = "fecapi (https://github.com/jonthegeek/fecapi)",
    security_fn = fec_security,
    security_args = list(api_key = api_key),
    response_parser = fec_parse_response
  )
}

fec_parse_response <- function(resp) {
  resp <- httr2::resp_body_json(resp)
  resp$results |>
    tibble::enframe(name = NULL) |>
    tidyr::unnest_wider("value")
}
