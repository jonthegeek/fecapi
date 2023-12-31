% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/010-call.R
\name{fec_call_api}
\alias{fec_call_api}
\title{Call the OpenFEC API}
\usage{
fec_call_api(
  path,
  query = NULL,
  body = NULL,
  method = NULL,
  api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")
)
}
\arguments{
\item{path}{The route to an API endpoint. Optionally, a list with the path
plus variables to \code{\link[glue:glue]{glue::glue()}} into the path.}

\item{query}{An optional list of parameters to pass in the query portion of
the request.}

\item{body}{An object to use as the body of the request. If any component of
the body is a path, pass it through \code{\link[fs:path]{fs::path()}} or otherwise give it the
class "fs_path" to indicate that it is a path.}

\item{method}{If the method is something other than GET or POST, supply it.
Case is ignored.}

\item{api_key}{An API key provided by the FEC. Get your key at
https://api.open.fec.gov/developers/. We recommend storing the key in your
\code{.Renviron} file as \code{FEC_API_KEY}. The default value, "DEMO_KEY", allows
for limited experimentation.}
}
\value{
The response from the endpoint.
}
\description{
Generate a request to an OpenFEC endpoint.
}
