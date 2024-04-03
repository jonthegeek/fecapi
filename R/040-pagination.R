.validate_pagination <- function(pagination, call = rlang::caller_env()) {
  rlang::arg_match0(
    pagination,
    c("none", "basic"),
    error_call = call
  )
}

.iterator_fn_basic <- function() {
  httr2::iterate_with_offset(
    "page",
    resp_pages = function(resp) {
      httr2::resp_body_json(resp)$pagination$pages
    }
  )
}

.choose_pagination_fn <- function(pagination, call = rlang::caller_env()) {
  pagination <- .validate_pagination(pagination, call)
  switch(pagination,
    basic = .iterator_fn_basic(),
    none = NULL
  )
}
