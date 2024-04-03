# fec_get_candidates() returns expected result

    Code
      test_result <- fec_get_candidates()
      test_result
    Output
      # A tibble: 100 x 24
         active_through candidate_id candidate_inactive candidate_status cycles    
                  <int> <chr>        <lgl>              <chr>            <list>    
       1           2024 P40014052    FALSE              N                <list [1]>
       2           2024 P40013393    FALSE              N                <list [1]>
       3           2024 P40013401    FALSE              N                <list [1]>
       4           2020 P00011569    FALSE              N                <list [2]>
       5           2004 P40002172    FALSE              N                <list [2]>
       6           2022 H2CO07170    FALSE              P                <list [2]>
       7           2022 S2CO00175    FALSE              P                <list [2]>
       8           2022 H2UT03280    FALSE              C                <list [1]>
       9           2018 S2UT00229    FALSE              P                <list [5]>
      10           2020 H0TX22260    FALSE              C                <list [1]>
      # i 90 more rows
      # i 19 more variables: district <chr>, district_number <int>,
      #   election_districts <list>, election_years <list>, federal_funds_flag <lgl>,
      #   first_file_date <chr>, has_raised_funds <lgl>,
      #   inactive_election_years <list>, incumbent_challenge <chr>,
      #   incumbent_challenge_full <chr>, last_f2_date <chr>, last_file_date <chr>,
      #   load_date <chr>, name <chr>, office <chr>, office_full <chr>, ...

