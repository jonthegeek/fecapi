% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paths-efiling.R
\name{fec_get_efile_filings}
\alias{fec_get_efile_filings}
\title{Get efile filings}
\usage{
fec_get_efile_filings(
  file_number,
  sort_nulls_last,
  page,
  per_page,
  sort_hide_null,
  committee_id,
  min_receipt_date,
  max_receipt_date,
  q_filer,
  sort_null_only,
  sort,
  api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")
)
}
\arguments{
\item{file_number}{Filing ID number}

\item{sort_nulls_last}{Toggle that sorts null values last}

\item{page}{For paginating through results, starting at page 1}

\item{per_page}{The number of results returned per page. Defaults to 20.}

\item{sort_hide_null}{Hide null values on sorted column(s).}

\item{committee_id}{A unique identifier assigned to each committee or filer registered with the FEC. In general committee id's begin with the letter C which is followed by eight digits.}

\item{min_receipt_date}{Selects all filings received after this date(MM/DD/YYYY or YYYY-MM-DD)}

\item{max_receipt_date}{Selects all filings received before this date(MM/DD/YYYY or YYYY-MM-DD)}

\item{q_filer}{Keyword search for filer name or ID}

\item{sort_null_only}{Toggle that filters out all rows having sort column that is non-null}

\item{sort}{Provide a field to sort by. Use \code{-} for descending order.}

\item{api_key}{An API key provided by the API provider. This key is not
clearly documented in the API description. Check the API documentation for
details.}
}
\value{
BKTODO: Return descriptions are not yet implemented in beekeeper
}
\description{
Basic information about electronic files coming into the FEC, posted as they are received.
}
