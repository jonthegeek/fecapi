# fec_get_candidates() returns expected result

    Code
      test_result <- fec_get_candidates()
      test_result
    Output
      $api_version
      [1] "1.0"
      
      $pagination
      $pagination$count
      [1] 49964
      
      $pagination$is_count_exact
      [1] TRUE
      
      $pagination$page
      [1] 1
      
      $pagination$pages
      [1] 2499
      
      $pagination$per_page
      [1] 20
      
      
      $results
      $results[[1]]
      $results[[1]]$active_through
      [1] 2024
      
      $results[[1]]$candidate_id
      [1] "P40014052"
      
      $results[[1]]$candidate_inactive
      [1] FALSE
      
      $results[[1]]$candidate_status
      [1] "N"
      
      $results[[1]]$cycles
      $results[[1]]$cycles[[1]]
      [1] 2024
      
      
      $results[[1]]$district
      [1] "00"
      
      $results[[1]]$district_number
      [1] 0
      
      $results[[1]]$election_districts
      $results[[1]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[1]]$election_years
      $results[[1]]$election_years[[1]]
      [1] 2024
      
      
      $results[[1]]$federal_funds_flag
      [1] FALSE
      
      $results[[1]]$first_file_date
      [1] "2023-06-24"
      
      $results[[1]]$has_raised_funds
      [1] FALSE
      
      $results[[1]]$inactive_election_years
      NULL
      
      $results[[1]]$incumbent_challenge
      [1] "C"
      
      $results[[1]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[1]]$last_f2_date
      [1] "2023-06-24"
      
      $results[[1]]$last_file_date
      [1] "2023-06-24"
      
      $results[[1]]$load_date
      [1] "2023-07-10T21:05:09"
      
      $results[[1]]$name
      [1] "212 N HALF  W. JOHN, RODNEY HOWARD MR."
      
      $results[[1]]$office
      [1] "P"
      
      $results[[1]]$office_full
      [1] "President"
      
      $results[[1]]$party
      [1] "IND"
      
      $results[[1]]$party_full
      [1] "INDEPENDENT"
      
      $results[[1]]$state
      [1] "US"
      
      
      $results[[2]]
      $results[[2]]$active_through
      [1] 2024
      
      $results[[2]]$candidate_id
      [1] "P40013393"
      
      $results[[2]]$candidate_inactive
      [1] FALSE
      
      $results[[2]]$candidate_status
      [1] "N"
      
      $results[[2]]$cycles
      $results[[2]]$cycles[[1]]
      [1] 2024
      
      
      $results[[2]]$district
      [1] "00"
      
      $results[[2]]$district_number
      [1] 0
      
      $results[[2]]$election_districts
      $results[[2]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[2]]$election_years
      $results[[2]]$election_years[[1]]
      [1] 2024
      
      
      $results[[2]]$federal_funds_flag
      [1] FALSE
      
      $results[[2]]$first_file_date
      [1] "2023-06-04"
      
      $results[[2]]$has_raised_funds
      [1] FALSE
      
      $results[[2]]$inactive_election_years
      NULL
      
      $results[[2]]$incumbent_challenge
      [1] "C"
      
      $results[[2]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[2]]$last_f2_date
      [1] "2023-06-04"
      
      $results[[2]]$last_file_date
      [1] "2023-06-04"
      
      $results[[2]]$load_date
      [1] "2023-06-08T21:05:05"
      
      $results[[2]]$name
      [1] "375 ROB ROY DR, DAVID J SR SR"
      
      $results[[2]]$office
      [1] "P"
      
      $results[[2]]$office_full
      [1] "President"
      
      $results[[2]]$party
      [1] "DEM"
      
      $results[[2]]$party_full
      [1] "DEMOCRATIC PARTY"
      
      $results[[2]]$state
      [1] "US"
      
      
      $results[[3]]
      $results[[3]]$active_through
      [1] 2024
      
      $results[[3]]$candidate_id
      [1] "P40013401"
      
      $results[[3]]$candidate_inactive
      [1] FALSE
      
      $results[[3]]$candidate_status
      [1] "N"
      
      $results[[3]]$cycles
      $results[[3]]$cycles[[1]]
      [1] 2024
      
      
      $results[[3]]$district
      [1] "00"
      
      $results[[3]]$district_number
      [1] 0
      
      $results[[3]]$election_districts
      $results[[3]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[3]]$election_years
      $results[[3]]$election_years[[1]]
      [1] 2024
      
      
      $results[[3]]$federal_funds_flag
      [1] FALSE
      
      $results[[3]]$first_file_date
      [1] "2023-06-04"
      
      $results[[3]]$has_raised_funds
      [1] FALSE
      
      $results[[3]]$inactive_election_years
      NULL
      
      $results[[3]]$incumbent_challenge
      [1] "C"
      
      $results[[3]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[3]]$last_f2_date
      [1] "2023-06-04"
      
      $results[[3]]$last_file_date
      [1] "2023-06-04"
      
      $results[[3]]$load_date
      [1] "2023-06-08T21:05:05"
      
      $results[[3]]$name
      [1] "375 ROB ROY DR, DAVID J SR SR"
      
      $results[[3]]$office
      [1] "P"
      
      $results[[3]]$office_full
      [1] "President"
      
      $results[[3]]$party
      [1] "DEM"
      
      $results[[3]]$party_full
      [1] "DEMOCRATIC PARTY"
      
      $results[[3]]$state
      [1] "US"
      
      
      $results[[4]]
      $results[[4]]$active_through
      [1] 2020
      
      $results[[4]]$candidate_id
      [1] "P00011569"
      
      $results[[4]]$candidate_inactive
      [1] FALSE
      
      $results[[4]]$candidate_status
      [1] "N"
      
      $results[[4]]$cycles
      $results[[4]]$cycles[[1]]
      [1] 2020
      
      $results[[4]]$cycles[[2]]
      [1] 2022
      
      
      $results[[4]]$district
      [1] "00"
      
      $results[[4]]$district_number
      [1] 0
      
      $results[[4]]$election_districts
      $results[[4]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[4]]$election_years
      $results[[4]]$election_years[[1]]
      [1] 2020
      
      
      $results[[4]]$federal_funds_flag
      [1] FALSE
      
      $results[[4]]$first_file_date
      [1] "2019-04-23"
      
      $results[[4]]$has_raised_funds
      [1] FALSE
      
      $results[[4]]$inactive_election_years
      NULL
      
      $results[[4]]$incumbent_challenge
      [1] "C"
      
      $results[[4]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[4]]$last_f2_date
      [1] "2019-04-23"
      
      $results[[4]]$last_file_date
      [1] "2019-04-23"
      
      $results[[4]]$load_date
      [1] "2021-12-08T06:50:50"
      
      $results[[4]]$name
      [1] "753, JO"
      
      $results[[4]]$office
      [1] "P"
      
      $results[[4]]$office_full
      [1] "President"
      
      $results[[4]]$party
      [1] "NNE"
      
      $results[[4]]$party_full
      [1] "NONE"
      
      $results[[4]]$state
      [1] "US"
      
      
      $results[[5]]
      $results[[5]]$active_through
      [1] 2004
      
      $results[[5]]$candidate_id
      [1] "P40002172"
      
      $results[[5]]$candidate_inactive
      [1] FALSE
      
      $results[[5]]$candidate_status
      [1] "N"
      
      $results[[5]]$cycles
      $results[[5]]$cycles[[1]]
      [1] 2002
      
      $results[[5]]$cycles[[2]]
      [1] 2004
      
      
      $results[[5]]$district
      [1] "00"
      
      $results[[5]]$district_number
      [1] 0
      
      $results[[5]]$election_districts
      $results[[5]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[5]]$election_years
      $results[[5]]$election_years[[1]]
      [1] 2004
      
      
      $results[[5]]$federal_funds_flag
      [1] FALSE
      
      $results[[5]]$first_file_date
      [1] "2002-01-30"
      
      $results[[5]]$has_raised_funds
      [1] FALSE
      
      $results[[5]]$inactive_election_years
      NULL
      
      $results[[5]]$incumbent_challenge
      [1] "C"
      
      $results[[5]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[5]]$last_f2_date
      [1] "2002-01-30"
      
      $results[[5]]$last_file_date
      [1] "2002-01-30"
      
      $results[[5]]$load_date
      [1] "2002-04-12T00:00:00"
      
      $results[[5]]$name
      [1] "AABBATTE, MICHAEL THOMAS WITORT"
      
      $results[[5]]$office
      [1] "P"
      
      $results[[5]]$office_full
      [1] "President"
      
      $results[[5]]$party
      [1] "IND"
      
      $results[[5]]$party_full
      [1] "INDEPENDENT"
      
      $results[[5]]$state
      [1] "US"
      
      
      $results[[6]]
      $results[[6]]$active_through
      [1] 2022
      
      $results[[6]]$candidate_id
      [1] "H2CO07170"
      
      $results[[6]]$candidate_inactive
      [1] FALSE
      
      $results[[6]]$candidate_status
      [1] "P"
      
      $results[[6]]$cycles
      $results[[6]]$cycles[[1]]
      [1] 2022
      
      $results[[6]]$cycles[[2]]
      [1] 2024
      
      
      $results[[6]]$district
      [1] "07"
      
      $results[[6]]$district_number
      [1] 7
      
      $results[[6]]$election_districts
      $results[[6]]$election_districts[[1]]
      [1] "07"
      
      
      $results[[6]]$election_years
      $results[[6]]$election_years[[1]]
      [1] 2022
      
      
      $results[[6]]$federal_funds_flag
      [1] FALSE
      
      $results[[6]]$first_file_date
      [1] "2021-12-27"
      
      $results[[6]]$has_raised_funds
      [1] TRUE
      
      $results[[6]]$inactive_election_years
      NULL
      
      $results[[6]]$incumbent_challenge
      [1] "O"
      
      $results[[6]]$incumbent_challenge_full
      [1] "Open seat"
      
      $results[[6]]$last_f2_date
      [1] "2022-08-10"
      
      $results[[6]]$last_file_date
      [1] "2022-08-10"
      
      $results[[6]]$load_date
      [1] "2023-03-09T10:16:03"
      
      $results[[6]]$name
      [1] "AADLAND, ERIK"
      
      $results[[6]]$office
      [1] "H"
      
      $results[[6]]$office_full
      [1] "House"
      
      $results[[6]]$party
      [1] "REP"
      
      $results[[6]]$party_full
      [1] "REPUBLICAN PARTY"
      
      $results[[6]]$state
      [1] "CO"
      
      
      $results[[7]]
      $results[[7]]$active_through
      [1] 2022
      
      $results[[7]]$candidate_id
      [1] "S2CO00175"
      
      $results[[7]]$candidate_inactive
      [1] FALSE
      
      $results[[7]]$candidate_status
      [1] "P"
      
      $results[[7]]$cycles
      $results[[7]]$cycles[[1]]
      [1] 2022
      
      $results[[7]]$cycles[[2]]
      [1] 2024
      
      
      $results[[7]]$district
      [1] "00"
      
      $results[[7]]$district_number
      [1] 0
      
      $results[[7]]$election_districts
      $results[[7]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[7]]$election_years
      $results[[7]]$election_years[[1]]
      [1] 2022
      
      
      $results[[7]]$federal_funds_flag
      [1] FALSE
      
      $results[[7]]$first_file_date
      [1] "2021-06-04"
      
      $results[[7]]$has_raised_funds
      [1] FALSE
      
      $results[[7]]$inactive_election_years
      NULL
      
      $results[[7]]$incumbent_challenge
      [1] "C"
      
      $results[[7]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[7]]$last_f2_date
      [1] "2021-06-04"
      
      $results[[7]]$last_file_date
      [1] "2021-06-04"
      
      $results[[7]]$load_date
      [1] "2023-03-09T10:16:03"
      
      $results[[7]]$name
      [1] "AADLAND, ERIK"
      
      $results[[7]]$office
      [1] "S"
      
      $results[[7]]$office_full
      [1] "Senate"
      
      $results[[7]]$party
      [1] "REP"
      
      $results[[7]]$party_full
      [1] "REPUBLICAN PARTY"
      
      $results[[7]]$state
      [1] "CO"
      
      
      $results[[8]]
      $results[[8]]$active_through
      [1] 2022
      
      $results[[8]]$candidate_id
      [1] "H2UT03280"
      
      $results[[8]]$candidate_inactive
      [1] FALSE
      
      $results[[8]]$candidate_status
      [1] "C"
      
      $results[[8]]$cycles
      $results[[8]]$cycles[[1]]
      [1] 2022
      
      
      $results[[8]]$district
      [1] "03"
      
      $results[[8]]$district_number
      [1] 3
      
      $results[[8]]$election_districts
      $results[[8]]$election_districts[[1]]
      [1] "03"
      
      
      $results[[8]]$election_years
      $results[[8]]$election_years[[1]]
      [1] 2022
      
      
      $results[[8]]$federal_funds_flag
      [1] FALSE
      
      $results[[8]]$first_file_date
      [1] "2020-03-24"
      
      $results[[8]]$has_raised_funds
      [1] TRUE
      
      $results[[8]]$inactive_election_years
      NULL
      
      $results[[8]]$incumbent_challenge
      [1] "C"
      
      $results[[8]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[8]]$last_f2_date
      [1] "2022-03-21"
      
      $results[[8]]$last_file_date
      [1] "2022-03-21"
      
      $results[[8]]$load_date
      [1] "2022-04-13T21:10:09"
      
      $results[[8]]$name
      [1] "AALDERS, TIM"
      
      $results[[8]]$office
      [1] "H"
      
      $results[[8]]$office_full
      [1] "House"
      
      $results[[8]]$party
      [1] "REP"
      
      $results[[8]]$party_full
      [1] "REPUBLICAN PARTY"
      
      $results[[8]]$state
      [1] "UT"
      
      
      $results[[9]]
      $results[[9]]$active_through
      [1] 2018
      
      $results[[9]]$candidate_id
      [1] "S2UT00229"
      
      $results[[9]]$candidate_inactive
      [1] FALSE
      
      $results[[9]]$candidate_status
      [1] "P"
      
      $results[[9]]$cycles
      $results[[9]]$cycles[[1]]
      [1] 2012
      
      $results[[9]]$cycles[[2]]
      [1] 2014
      
      $results[[9]]$cycles[[3]]
      [1] 2016
      
      $results[[9]]$cycles[[4]]
      [1] 2018
      
      $results[[9]]$cycles[[5]]
      [1] 2020
      
      
      $results[[9]]$district
      [1] "00"
      
      $results[[9]]$district_number
      [1] 0
      
      $results[[9]]$election_districts
      $results[[9]]$election_districts[[1]]
      [1] "00"
      
      $results[[9]]$election_districts[[2]]
      [1] "00"
      
      
      $results[[9]]$election_years
      $results[[9]]$election_years[[1]]
      [1] 2012
      
      $results[[9]]$election_years[[2]]
      [1] 2018
      
      
      $results[[9]]$federal_funds_flag
      [1] FALSE
      
      $results[[9]]$first_file_date
      [1] "2012-02-08"
      
      $results[[9]]$has_raised_funds
      [1] TRUE
      
      $results[[9]]$inactive_election_years
      NULL
      
      $results[[9]]$incumbent_challenge
      [1] "O"
      
      $results[[9]]$incumbent_challenge_full
      [1] "Open seat"
      
      $results[[9]]$last_f2_date
      [1] "2018-04-23"
      
      $results[[9]]$last_file_date
      [1] "2018-04-23"
      
      $results[[9]]$load_date
      [1] "2019-03-27T16:02:41"
      
      $results[[9]]$name
      [1] "AALDERS, TIMOTHY NOEL"
      
      $results[[9]]$office
      [1] "S"
      
      $results[[9]]$office_full
      [1] "Senate"
      
      $results[[9]]$party
      [1] "CON"
      
      $results[[9]]$party_full
      [1] "CONSTITUTION PARTY"
      
      $results[[9]]$state
      [1] "UT"
      
      
      $results[[10]]
      $results[[10]]$active_through
      [1] 2020
      
      $results[[10]]$candidate_id
      [1] "H0TX22260"
      
      $results[[10]]$candidate_inactive
      [1] FALSE
      
      $results[[10]]$candidate_status
      [1] "C"
      
      $results[[10]]$cycles
      $results[[10]]$cycles[[1]]
      [1] 2020
      
      
      $results[[10]]$district
      [1] "22"
      
      $results[[10]]$district_number
      [1] 22
      
      $results[[10]]$election_districts
      $results[[10]]$election_districts[[1]]
      [1] "22"
      
      
      $results[[10]]$election_years
      $results[[10]]$election_years[[1]]
      [1] 2020
      
      
      $results[[10]]$federal_funds_flag
      [1] FALSE
      
      $results[[10]]$first_file_date
      [1] "2019-10-17"
      
      $results[[10]]$has_raised_funds
      [1] TRUE
      
      $results[[10]]$inactive_election_years
      NULL
      
      $results[[10]]$incumbent_challenge
      [1] "O"
      
      $results[[10]]$incumbent_challenge_full
      [1] "Open seat"
      
      $results[[10]]$last_f2_date
      [1] "2019-10-17"
      
      $results[[10]]$last_file_date
      [1] "2019-10-17"
      
      $results[[10]]$load_date
      [1] "2020-03-18T21:13:37"
      
      $results[[10]]$name
      [1] "AALOORI, BANGAR REDDY"
      
      $results[[10]]$office
      [1] "H"
      
      $results[[10]]$office_full
      [1] "House"
      
      $results[[10]]$party
      [1] "REP"
      
      $results[[10]]$party_full
      [1] "REPUBLICAN PARTY"
      
      $results[[10]]$state
      [1] "TX"
      
      
      $results[[11]]
      $results[[11]]$active_through
      [1] 1978
      
      $results[[11]]$candidate_id
      [1] "H6PA16106"
      
      $results[[11]]$candidate_inactive
      [1] FALSE
      
      $results[[11]]$candidate_status
      [1] "P"
      
      $results[[11]]$cycles
      $results[[11]]$cycles[[1]]
      [1] 1976
      
      $results[[11]]$cycles[[2]]
      [1] 1978
      
      $results[[11]]$cycles[[3]]
      [1] 1980
      
      
      $results[[11]]$district
      [1] "16"
      
      $results[[11]]$district_number
      [1] 16
      
      $results[[11]]$election_districts
      $results[[11]]$election_districts[[1]]
      [1] "16"
      
      $results[[11]]$election_districts[[2]]
      [1] "16"
      
      
      $results[[11]]$election_years
      $results[[11]]$election_years[[1]]
      [1] 1976
      
      $results[[11]]$election_years[[2]]
      [1] 1978
      
      
      $results[[11]]$federal_funds_flag
      [1] FALSE
      
      $results[[11]]$first_file_date
      [1] "1976-04-12"
      
      $results[[11]]$has_raised_funds
      [1] TRUE
      
      $results[[11]]$inactive_election_years
      NULL
      
      $results[[11]]$incumbent_challenge
      NULL
      
      $results[[11]]$incumbent_challenge_full
      NULL
      
      $results[[11]]$last_f2_date
      [1] "1978-07-05"
      
      $results[[11]]$last_file_date
      [1] "1978-07-05"
      
      $results[[11]]$load_date
      [1] "2002-03-30T00:00:00"
      
      $results[[11]]$name
      [1] "AAMODT, NORMAN O."
      
      $results[[11]]$office
      [1] "H"
      
      $results[[11]]$office_full
      [1] "House"
      
      $results[[11]]$party
      [1] "REP"
      
      $results[[11]]$party_full
      [1] "REPUBLICAN PARTY"
      
      $results[[11]]$state
      [1] "PA"
      
      
      $results[[12]]
      $results[[12]]$active_through
      [1] 2012
      
      $results[[12]]$candidate_id
      [1] "H2CA01110"
      
      $results[[12]]$candidate_inactive
      [1] FALSE
      
      $results[[12]]$candidate_status
      [1] "P"
      
      $results[[12]]$cycles
      $results[[12]]$cycles[[1]]
      [1] 2012
      
      $results[[12]]$cycles[[2]]
      [1] 2014
      
      $results[[12]]$cycles[[3]]
      [1] 2016
      
      
      $results[[12]]$district
      [1] "01"
      
      $results[[12]]$district_number
      [1] 1
      
      $results[[12]]$election_districts
      $results[[12]]$election_districts[[1]]
      [1] "01"
      
      
      $results[[12]]$election_years
      $results[[12]]$election_years[[1]]
      [1] 2012
      
      
      $results[[12]]$federal_funds_flag
      [1] FALSE
      
      $results[[12]]$first_file_date
      [1] "2012-02-22"
      
      $results[[12]]$has_raised_funds
      [1] TRUE
      
      $results[[12]]$inactive_election_years
      NULL
      
      $results[[12]]$incumbent_challenge
      [1] "C"
      
      $results[[12]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[12]]$last_f2_date
      [1] "2012-02-22"
      
      $results[[12]]$last_file_date
      [1] "2012-02-22"
      
      $results[[12]]$load_date
      [1] "2013-04-26T09:04:30"
      
      $results[[12]]$name
      [1] "AANESTAD, SAMUEL"
      
      $results[[12]]$office
      [1] "H"
      
      $results[[12]]$office_full
      [1] "House"
      
      $results[[12]]$party
      [1] "REP"
      
      $results[[12]]$party_full
      [1] "REPUBLICAN PARTY"
      
      $results[[12]]$state
      [1] "CA"
      
      
      $results[[13]]
      $results[[13]]$active_through
      [1] 2018
      
      $results[[13]]$candidate_id
      [1] "H8CO06237"
      
      $results[[13]]$candidate_inactive
      [1] FALSE
      
      $results[[13]]$candidate_status
      [1] "C"
      
      $results[[13]]$cycles
      $results[[13]]$cycles[[1]]
      [1] 2018
      
      
      $results[[13]]$district
      [1] "06"
      
      $results[[13]]$district_number
      [1] 6
      
      $results[[13]]$election_districts
      $results[[13]]$election_districts[[1]]
      [1] "06"
      
      
      $results[[13]]$election_years
      $results[[13]]$election_years[[1]]
      [1] 2018
      
      
      $results[[13]]$federal_funds_flag
      [1] FALSE
      
      $results[[13]]$first_file_date
      [1] "2017-04-26"
      
      $results[[13]]$has_raised_funds
      [1] TRUE
      
      $results[[13]]$inactive_election_years
      NULL
      
      $results[[13]]$incumbent_challenge
      [1] "C"
      
      $results[[13]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[13]]$last_f2_date
      [1] "2017-04-26"
      
      $results[[13]]$last_file_date
      [1] "2017-04-26"
      
      $results[[13]]$load_date
      [1] "2017-08-01T20:57:28"
      
      $results[[13]]$name
      [1] "AARESTAD, DAVID"
      
      $results[[13]]$office
      [1] "H"
      
      $results[[13]]$office_full
      [1] "House"
      
      $results[[13]]$party
      [1] "DEM"
      
      $results[[13]]$party_full
      [1] "DEMOCRATIC PARTY"
      
      $results[[13]]$state
      [1] "CO"
      
      
      $results[[14]]
      $results[[14]]$active_through
      [1] 1998
      
      $results[[14]]$candidate_id
      [1] "H8CA18053"
      
      $results[[14]]$candidate_inactive
      [1] FALSE
      
      $results[[14]]$candidate_status
      [1] "N"
      
      $results[[14]]$cycles
      $results[[14]]$cycles[[1]]
      [1] 1998
      
      
      $results[[14]]$district
      [1] "18"
      
      $results[[14]]$district_number
      [1] 18
      
      $results[[14]]$election_districts
      $results[[14]]$election_districts[[1]]
      [1] "18"
      
      
      $results[[14]]$election_years
      $results[[14]]$election_years[[1]]
      [1] 1998
      
      
      $results[[14]]$federal_funds_flag
      [1] FALSE
      
      $results[[14]]$first_file_date
      NULL
      
      $results[[14]]$has_raised_funds
      [1] FALSE
      
      $results[[14]]$inactive_election_years
      NULL
      
      $results[[14]]$incumbent_challenge
      [1] "C"
      
      $results[[14]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[14]]$last_f2_date
      NULL
      
      $results[[14]]$last_file_date
      NULL
      
      $results[[14]]$load_date
      [1] "2002-04-03T00:00:00"
      
      $results[[14]]$name
      [1] "AAROE, KEN"
      
      $results[[14]]$office
      [1] "H"
      
      $results[[14]]$office_full
      [1] "House"
      
      $results[[14]]$party
      [1] "LIB"
      
      $results[[14]]$party_full
      [1] "LIBERTARIAN PARTY"
      
      $results[[14]]$state
      [1] "CA"
      
      
      $results[[15]]
      $results[[15]]$active_through
      [1] 2008
      
      $results[[15]]$candidate_id
      [1] "P80002926"
      
      $results[[15]]$candidate_inactive
      [1] FALSE
      
      $results[[15]]$candidate_status
      [1] "N"
      
      $results[[15]]$cycles
      $results[[15]]$cycles[[1]]
      [1] 2006
      
      $results[[15]]$cycles[[2]]
      [1] 2008
      
      $results[[15]]$cycles[[3]]
      [1] 2010
      
      $results[[15]]$cycles[[4]]
      [1] 2012
      
      $results[[15]]$cycles[[5]]
      [1] 2014
      
      $results[[15]]$cycles[[6]]
      [1] 2016
      
      
      $results[[15]]$district
      [1] "00"
      
      $results[[15]]$district_number
      [1] 0
      
      $results[[15]]$election_districts
      $results[[15]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[15]]$election_years
      $results[[15]]$election_years[[1]]
      [1] 2008
      
      
      $results[[15]]$federal_funds_flag
      [1] FALSE
      
      $results[[15]]$first_file_date
      [1] "2005-10-12"
      
      $results[[15]]$has_raised_funds
      [1] TRUE
      
      $results[[15]]$inactive_election_years
      NULL
      
      $results[[15]]$incumbent_challenge
      [1] "O"
      
      $results[[15]]$incumbent_challenge_full
      [1] "Open seat"
      
      $results[[15]]$last_f2_date
      [1] "2007-03-13"
      
      $results[[15]]$last_file_date
      [1] "2007-03-13"
      
      $results[[15]]$load_date
      [1] "2016-11-17T06:10:48"
      
      $results[[15]]$name
      [1] "AARON, LAURA DAVIS"
      
      $results[[15]]$office
      [1] "P"
      
      $results[[15]]$office_full
      [1] "President"
      
      $results[[15]]$party
      [1] "DEM"
      
      $results[[15]]$party_full
      [1] "DEMOCRATIC PARTY"
      
      $results[[15]]$state
      [1] "US"
      
      
      $results[[16]]
      $results[[16]]$active_through
      [1] 2020
      
      $results[[16]]$candidate_id
      [1] "H0FL21102"
      
      $results[[16]]$candidate_inactive
      [1] FALSE
      
      $results[[16]]$candidate_status
      [1] "N"
      
      $results[[16]]$cycles
      $results[[16]]$cycles[[1]]
      [1] 2020
      
      
      $results[[16]]$district
      [1] "21"
      
      $results[[16]]$district_number
      [1] 21
      
      $results[[16]]$election_districts
      $results[[16]]$election_districts[[1]]
      [1] "21"
      
      
      $results[[16]]$election_years
      $results[[16]]$election_years[[1]]
      [1] 2020
      
      
      $results[[16]]$federal_funds_flag
      [1] FALSE
      
      $results[[16]]$first_file_date
      [1] "2019-11-20"
      
      $results[[16]]$has_raised_funds
      [1] FALSE
      
      $results[[16]]$inactive_election_years
      NULL
      
      $results[[16]]$incumbent_challenge
      [1] "C"
      
      $results[[16]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[16]]$last_f2_date
      [1] "2019-11-20"
      
      $results[[16]]$last_file_date
      [1] "2019-11-20"
      
      $results[[16]]$load_date
      [1] "2019-11-25T21:06:05"
      
      $results[[16]]$name
      [1] "AARONS, ADAM"
      
      $results[[16]]$office
      [1] "H"
      
      $results[[16]]$office_full
      [1] "House"
      
      $results[[16]]$party
      [1] "DEM"
      
      $results[[16]]$party_full
      [1] "DEMOCRATIC PARTY"
      
      $results[[16]]$state
      [1] "FL"
      
      
      $results[[17]]
      $results[[17]]$active_through
      [1] 2024
      
      $results[[17]]$candidate_id
      [1] "H4OR05312"
      
      $results[[17]]$candidate_inactive
      [1] FALSE
      
      $results[[17]]$candidate_status
      [1] "C"
      
      $results[[17]]$cycles
      $results[[17]]$cycles[[1]]
      [1] 2024
      
      
      $results[[17]]$district
      [1] "05"
      
      $results[[17]]$district_number
      [1] 5
      
      $results[[17]]$election_districts
      $results[[17]]$election_districts[[1]]
      [1] "05"
      
      
      $results[[17]]$election_years
      $results[[17]]$election_years[[1]]
      [1] 2024
      
      
      $results[[17]]$federal_funds_flag
      [1] FALSE
      
      $results[[17]]$first_file_date
      [1] "2023-07-24"
      
      $results[[17]]$has_raised_funds
      [1] TRUE
      
      $results[[17]]$inactive_election_years
      NULL
      
      $results[[17]]$incumbent_challenge
      [1] "C"
      
      $results[[17]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[17]]$last_f2_date
      [1] "2023-07-24"
      
      $results[[17]]$last_file_date
      [1] "2023-07-24"
      
      $results[[17]]$load_date
      [1] "2023-10-16T21:03:02"
      
      $results[[17]]$name
      [1] "AASEN, ANDREW J"
      
      $results[[17]]$office
      [1] "H"
      
      $results[[17]]$office_full
      [1] "House"
      
      $results[[17]]$party
      [1] "NON"
      
      $results[[17]]$party_full
      [1] "NON-PARTY"
      
      $results[[17]]$state
      [1] "OR"
      
      
      $results[[18]]
      $results[[18]]$active_through
      [1] 2024
      
      $results[[18]]$candidate_id
      [1] "H2CA30291"
      
      $results[[18]]$candidate_inactive
      [1] FALSE
      
      $results[[18]]$candidate_status
      [1] "N"
      
      $results[[18]]$cycles
      $results[[18]]$cycles[[1]]
      [1] 2022
      
      $results[[18]]$cycles[[2]]
      [1] 2024
      
      
      $results[[18]]$district
      [1] "32"
      
      $results[[18]]$district_number
      [1] 32
      
      $results[[18]]$election_districts
      $results[[18]]$election_districts[[1]]
      [1] "32"
      
      $results[[18]]$election_districts[[2]]
      [1] "32"
      
      
      $results[[18]]$election_years
      $results[[18]]$election_years[[1]]
      [1] 2022
      
      $results[[18]]$election_years[[2]]
      [1] 2024
      
      
      $results[[18]]$federal_funds_flag
      [1] FALSE
      
      $results[[18]]$first_file_date
      [1] "2021-01-16"
      
      $results[[18]]$has_raised_funds
      [1] TRUE
      
      $results[[18]]$inactive_election_years
      NULL
      
      $results[[18]]$incumbent_challenge
      [1] "C"
      
      $results[[18]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[18]]$last_f2_date
      [1] "2022-07-15"
      
      $results[[18]]$last_file_date
      [1] "2022-07-15"
      
      $results[[18]]$load_date
      [1] "2023-01-12T22:24:01"
      
      $results[[18]]$name
      [1] "AAZAMI, SHERVIN"
      
      $results[[18]]$office
      [1] "H"
      
      $results[[18]]$office_full
      [1] "House"
      
      $results[[18]]$party
      [1] "DEM"
      
      $results[[18]]$party_full
      [1] "DEMOCRATIC PARTY"
      
      $results[[18]]$state
      [1] "CA"
      
      
      $results[[19]]
      $results[[19]]$active_through
      [1] 2016
      
      $results[[19]]$candidate_id
      [1] "P60016326"
      
      $results[[19]]$candidate_inactive
      [1] FALSE
      
      $results[[19]]$candidate_status
      [1] "N"
      
      $results[[19]]$cycles
      $results[[19]]$cycles[[1]]
      [1] 2016
      
      
      $results[[19]]$district
      [1] "00"
      
      $results[[19]]$district_number
      [1] 0
      
      $results[[19]]$election_districts
      $results[[19]]$election_districts[[1]]
      [1] "00"
      
      
      $results[[19]]$election_years
      $results[[19]]$election_years[[1]]
      [1] 2016
      
      
      $results[[19]]$federal_funds_flag
      [1] FALSE
      
      $results[[19]]$first_file_date
      [1] "2015-09-30"
      
      $results[[19]]$has_raised_funds
      [1] FALSE
      
      $results[[19]]$inactive_election_years
      NULL
      
      $results[[19]]$incumbent_challenge
      [1] "O"
      
      $results[[19]]$incumbent_challenge_full
      [1] "Open seat"
      
      $results[[19]]$last_f2_date
      [1] "2015-09-30"
      
      $results[[19]]$last_file_date
      [1] "2015-09-30"
      
      $results[[19]]$load_date
      [1] "2016-11-17T06:10:49"
      
      $results[[19]]$name
      [1] "ABABIY, JON"
      
      $results[[19]]$office
      [1] "P"
      
      $results[[19]]$office_full
      [1] "President"
      
      $results[[19]]$party
      [1] "PAF"
      
      $results[[19]]$party_full
      [1] "PEACE AND FREEDOM"
      
      $results[[19]]$state
      [1] "US"
      
      
      $results[[20]]
      $results[[20]]$active_through
      [1] 2022
      
      $results[[20]]$candidate_id
      [1] "H2MN07162"
      
      $results[[20]]$candidate_inactive
      [1] FALSE
      
      $results[[20]]$candidate_status
      [1] "P"
      
      $results[[20]]$cycles
      $results[[20]]$cycles[[1]]
      [1] 2022
      
      $results[[20]]$cycles[[2]]
      [1] 2024
      
      
      $results[[20]]$district
      [1] "07"
      
      $results[[20]]$district_number
      [1] 7
      
      $results[[20]]$election_districts
      $results[[20]]$election_districts[[1]]
      [1] "07"
      
      
      $results[[20]]$election_years
      $results[[20]]$election_years[[1]]
      [1] 2022
      
      
      $results[[20]]$federal_funds_flag
      [1] FALSE
      
      $results[[20]]$first_file_date
      [1] "2022-06-06"
      
      $results[[20]]$has_raised_funds
      [1] TRUE
      
      $results[[20]]$inactive_election_years
      NULL
      
      $results[[20]]$incumbent_challenge
      [1] "C"
      
      $results[[20]]$incumbent_challenge_full
      [1] "Challenger"
      
      $results[[20]]$last_f2_date
      [1] "2022-06-06"
      
      $results[[20]]$last_file_date
      [1] "2022-06-06"
      
      $results[[20]]$load_date
      [1] "2023-03-09T10:16:03"
      
      $results[[20]]$name
      [1] "ABAHSAIN, JILL"
      
      $results[[20]]$office
      [1] "H"
      
      $results[[20]]$office_full
      [1] "House"
      
      $results[[20]]$party
      [1] "DFL"
      
      $results[[20]]$party_full
      [1] "DEMOCRATIC-FARMER-LABOR"
      
      $results[[20]]$state
      [1] "MN"
      
      
      

