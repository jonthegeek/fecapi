# Set up the basic call once at package build.
req_fec_base <- nectar::req_setup(
  "https://api.open.fec.gov/v1",
  user_agent = "fecapi (https://github.com/jonthegeek/fecapi)"
)

#' Call the OpenFEC API
#'
#' Generate a request to an OpenFEC endpoint.
#'
#' @inheritParams nectar::call_api
#' @inheritParams rlang::args_error_context
#' @param pagination The pagination scheme to use. Currently either "none" (the
#'   default) or "basic" (a scheme that uses `per_page` and returned `pages`
#'   information). If an endpoint has a `per_page` argument, use "basic".
#' @param max_results The maximum number of results to return.
#' @param api_key An API key provided by the API provider. This key is not
#'   clearly documented in the API description. Check the API documentation for
#'   details.
#'
#' @return A tibble with the results of the API call.
#' @export
fec_call_api <- function(path,
                         query = list(),
                         body = NULL,
                         method = NULL,
                         pagination = c("none", "basic"),
                         max_results = Inf,
                         max_reqs = Inf,
                         api_key = Sys.getenv(
                           "FEC_API_KEY",
                           unset = "DEMO_KEY"
                         ),
                         call = rlang::caller_env()) {
  req_secure <- .security(req_fec_base, api_key = api_key)
  query$per_page <- min(100, max_results)
  req <- nectar::req_modify(
    req_secure,
    path = path,
    query = query,
    body = body,
    method = method
  )

  # Edited beekeeper code to implement pagination.
  resp <- .fec_perform(
    req,
    pagination,
    query$per_page,
    max_results,
    max_reqs,
    call = call
  )
  nectar::resp_parse(resp, response_parser = .response_parser)
}

.fec_perform <- function(req,
                         pagination,
                         per_page,
                         max_results,
                         max_reqs,
                         call) {
  next_req <- .choose_pagination_fn(pagination, call = call)
  max_reqs <- min(max_reqs, ceiling(max_results / per_page))
  nectar::req_perform_opinionated(
    req,
    next_req = next_req,
    max_reqs = max_reqs
  )
}
