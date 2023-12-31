% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/path-candidates.R
\name{fec_get_candidates}
\alias{fec_get_candidates}
\title{Get candidates}
\usage{
fec_get_candidates(
  office = c("H", "P", "S"),
  api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")
)
}
\arguments{
\item{office}{Federal office candidate runs for: H, S or P.}

\item{api_key}{An API key provided by the FEC. Get your key at
https://api.open.fec.gov/developers/. We recommend storing the key in your
\code{.Renviron} file as \code{FEC_API_KEY}. The default value, "DEMO_KEY", allows
for limited experimentation.}
}
\value{
A data.frame of candidates. Currently only returns the first 20
candidates (pagination has not yet been implemented).
}
\description{
Fetch basic information about candidates, and use parameters to
filter results to the candidates you're looking for.

Each result reflects a unique FEC candidate ID. That ID is particular to
the candidate for a particular office sought. If a candidate runs for the
same office multiple times, the ID stays the same. If the same person runs
for another office — for example, a House candidate runs for a Senate
office — that candidate will get a unique ID for each office.
}
