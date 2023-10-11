
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fecapi

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![CRAN
status](https://www.r-pkg.org/badges/version/fecapi)](https://CRAN.R-project.org/package=fecapi)
[![Codecov test
coverage](https://codecov.io/gh/jonthegeek/fecapi/branch/main/graph/badge.svg)](https://app.codecov.io/gh/jonthegeek/fecapi?branch=main)
[![R-CMD-check](https://github.com/jonthegeek/fecapi/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/jonthegeek/fecapi/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

A client to interact with the [OpenFEC
API](https://api.open.fec.gov/developers/). The OpenFEC API provides
programmatic access to campaign finance data stored by the Federal
Election Commission.

## Installation

You can install the development version of fecapi from
[GitHub](https://github.com/) with:

``` r
# install.packages("remotes")
remotes::install_github("jonthegeek/fecapi")
```

## Made with {beekeeper}

This package is being developed using the
[{beekeeper}](https://beekeeper.api2r.org/) package. Development is very
active, and this package will likely change a lot in the coming weeks.

## Usage

This package is still a work in progress, and we do not yet recommend
usage. However, you can experiment using the `fec_all_api()` function,
or the `fec_get_candidates()` function.

``` r
# Get your API key at https://api.open.fec.gov/developers/
library(fecapi)
fec_get_candidates() |> head()
#> # A tibble: 6 × 24
#>   active_through candidate_id candidate_inactive candidate_status cycles    
#>            <int> <chr>        <lgl>              <chr>            <list>    
#> 1           2024 P40014052    FALSE              N                <list [1]>
#> 2           2024 P40013401    FALSE              N                <list [1]>
#> 3           2024 P40013393    FALSE              N                <list [1]>
#> 4           2020 P00011569    FALSE              N                <list [2]>
#> 5           2004 P40002172    FALSE              N                <list [2]>
#> 6           2022 S2CO00175    FALSE              P                <list [2]>
#> # ℹ 19 more variables: district <chr>, district_number <int>,
#> #   election_districts <list>, election_years <list>, federal_funds_flag <lgl>,
#> #   first_file_date <chr>, has_raised_funds <lgl>,
#> #   inactive_election_years <lgl>, incumbent_challenge <chr>,
#> #   incumbent_challenge_full <chr>, last_f2_date <chr>, last_file_date <chr>,
#> #   load_date <chr>, name <chr>, office <chr>, office_full <chr>, party <chr>,
#> #   party_full <chr>, state <chr>

fec_get_candidates(office = "P") |> head()
#> # A tibble: 6 × 24
#>   active_through candidate_id candidate_inactive candidate_status cycles    
#>            <int> <chr>        <lgl>              <chr>            <list>    
#> 1           2024 P40014052    FALSE              N                <list [1]>
#> 2           2024 P40013401    FALSE              N                <list [1]>
#> 3           2024 P40013393    FALSE              N                <list [1]>
#> 4           2020 P00011569    FALSE              N                <list [2]>
#> 5           2004 P40002172    FALSE              N                <list [2]>
#> 6           2008 P80002926    FALSE              N                <list [6]>
#> # ℹ 19 more variables: district <chr>, district_number <int>,
#> #   election_districts <list>, election_years <list>, federal_funds_flag <lgl>,
#> #   first_file_date <chr>, has_raised_funds <lgl>,
#> #   inactive_election_years <lgl>, incumbent_challenge <chr>,
#> #   incumbent_challenge_full <chr>, last_f2_date <chr>, last_file_date <chr>,
#> #   load_date <chr>, name <chr>, office <chr>, office_full <chr>, party <chr>,
#> #   party_full <chr>, state <chr>
```

## Code of Conduct

Please note that the fecapi project is released with a [Contributor Code
of Conduct](https://jonthegeek.github.io/fecapi/CODE_OF_CONDUCT.html).
By contributing to this project, you agree to abide by its terms.
