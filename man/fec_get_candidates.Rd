% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paths-candidate.R
\name{fec_get_candidates}
\alias{fec_get_candidates}
\title{Get candidates}
\usage{
fec_get_candidates(
  office = NULL,
  candidate_status = NULL,
  cycle = NULL,
  district = NULL,
  year = NULL,
  state = NULL,
  name = NULL,
  is_active_candidate = NULL,
  federal_funds_flag = NULL,
  candidate_id = NULL,
  min_first_file_date = NULL,
  has_raised_funds = NULL,
  election_year = NULL,
  incumbent_challenge = NULL,
  max_first_file_date = NULL,
  party = NULL,
  sort = NULL,
  sort_hide_null = NULL,
  sort_null_only = NULL,
  sort_nulls_last = NULL,
  max_results = 100,
  api_key = Sys.getenv("FEC_API_KEY", unset = "DEMO_KEY")
)
}
\arguments{
\item{office}{Federal office candidate runs for: H, S or P}

\item{candidate_status}{One-letter code explaining if the candidate is: - C
present candidate - F future candidate - N not yet a candidate - P prior
candidate}

\item{cycle}{Two-year election cycle in which a candidate runs for office.
Calculated from Form 2. The cycle begins with an odd year and is named for
its ending, even year. This cycle follows the traditional house election
cycle and subdivides the presidential and Senate elections into comparable
two-year blocks. To retrieve data for the entire four years of a
presidential term or six years of a senatorial term, you will need the
\code{election_full} flag.}

\item{district}{Two-digit US House distirict of the office the candidate is
running for. Presidential, Senate and House at-large candidates will have
District 00.}

\item{year}{Retrieve records pertaining to a particular election year. The
list of election years is based on a candidate filing a statement of
candidacy (F2) for that year.}

\item{state}{US state or territory where a candidate runs for office}

\item{name}{Name of candidate running for office}

\item{is_active_candidate}{Candidates who are actively seeking office. If no
value is specified, all candidates are returned. When True is specified,
only active candidates are returned. When False is specified, only inactive
candidates are returned.}

\item{federal_funds_flag}{A boolean the describes if a presidential candidate
has accepted federal funds. The flag will be false for House and Senate
candidates.}

\item{candidate_id}{A unique identifier assigned to each candidate registered
with the FEC. If a person runs for several offices, that person will have
separate candidate IDs for each office.}

\item{min_first_file_date}{Selects all candidates whose first filing was
received by the FEC after this date.}

\item{has_raised_funds}{A boolean that describes if a candidate's committee
has ever received any receipts for their campaign for this particular
office. (Candidates have separate candidate IDs for each office.)}

\item{election_year}{Year of election}

\item{incumbent_challenge}{One-letter code ('I', 'C', 'O') explaining if the
candidate is an incumbent, a challenger, or if the seat is open.}

\item{max_first_file_date}{Selects all candidates whose first filing was
received by the FEC before this date.}

\item{party}{Three-letter code for the party affiliated with a candidate or
committee. For example, DEM for Democratic Party and REP for Republican
Party.}

\item{sort}{Provide a field to sort by. Use \code{-} for descending order.}

\item{sort_hide_null}{Hide null values on sorted column(s).}

\item{sort_null_only}{Toggle that filters out all rows having sort column
that is non-null}

\item{sort_nulls_last}{Toggle that sorts null values last}

\item{max_results}{The maximum number of results to return. Note that
slightly more results may be returned if \code{max_results} is not evenly
divisible by 100.}

\item{api_key}{An API key provided by the API provider. This key is not
clearly documented in the API description. Check the API documentation for
details.}
}
\value{
BKTODO: Return descriptions are not yet implemented in beekeeper
}
\description{
Fetch basic information about candidates, and use parameters to filter
results to the candidates you're looking for. Each result reflects a unique
FEC candidate ID. That ID is particular to the candidate for a particular
office sought. If a candidate runs for the same office multiple times, the ID
stays the same. If the same person runs for another office — for example, a
House candidate runs for a Senate office — that candidate will get a unique
ID for each office.
}
