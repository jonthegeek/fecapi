# Set up the basic call once at package build.
fec_req_base <- nectar::req_setup(
  "https://api.open.fec.gov/v1",
  user_agent = "fecapi (https://github.com/jonthegeek/fecapi)"
)

#' Call the OpenFEC API
#'
#' Generate and perform request to an OpenFEC endpoint.
#'
#' @inheritParams nectar::req_modify
#' @inheritParams .fec_req_perform
#' @inheritParams rlang::args_error_context
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
  # Edited beekeeper code to implement pagination.
  query$per_page <- min(100, max_results)

  req <- nectar::req_modify(
    fec_req_base,
    path = path,
    query = query,
    body = body,
    method = method
  )
  req <- .fec_req_auth(req, api_key = api_key)

  # Edited beekeeper code to implement pagination.
  resp <- .fec_req_perform(
    req,
    pagination = pagination,
    per_page = query$per_page,
    max_results = max_results,
    max_reqs = max_reqs,
    call = call
  )

  nectar::resp_parse(resp, response_parser = .fec_response_parser)
}

#' Choose and apply pagination strategy
#'
#' @inheritParams rlang::args_error_context
#' @inheritParams nectar::req_perform_opinionated
#' @param req The request object to modify.
#' @param pagination The pagination scheme to use. Currently either "none" (the
#'   default) or "basic" (a scheme that uses `per_page` and returned `pages`
#'   information). If an endpoint has a `per_page` argument, use "basic".
#' @param max_results The maximum number of results to return. Note that
#'   slightly more results may be returned if `max_results` is not evenly
#'   divisible by 100.
#' @param per_page The number of results to return per page.
#'
#' @inherit nectar::req_perform_opinionated return
#' @keywords internal
.fec_req_perform <- function(req,
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
