#' Call the OpenFEC API
#'
#' Generate a request to an OpenFEC endpoint.
#'
#' @inheritParams nectar::call_api
#' @param api_key An API key provided by the API provider. This key is not
#'   clearly documented in the API description. Check the API documentation for
#'   details.
#'
#' @return The response from the endpoint.
#' @export
fec_call_api <- function(path,
                         query = list(),
                         body = NULL,
                         method = NULL,
                         pagination = c("none", "basic"),
                         max_results = 100,
                         max_reqs = Inf,
                         api_key = Sys.getenv(
                           "FEC_API_KEY",
                           unset = "DEMO_KEY"
                         ),
                         call = rlang::caller_env()) {
  next_req <- .choose_pagination_fn(pagination, call = call)
  query$per_page <- min(100, max_results)
  max_reqs <- min(max_reqs, max_results/query$per_page)

  nectar::call_api(
    base_url = "https://api.open.fec.gov/v1",
    path = path,
    query = query,
    body = body,
    method = method,
    user_agent = "fecapi (https://github.com/jonthegeek/fecapi)",
    security_fn = .security,
    security_args = list(api_key = api_key),
    response_parser = .response_parser,
    next_req = next_req,
    max_reqs = max_reqs
  )
}

