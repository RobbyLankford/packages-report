test.R
================
rlank
Tue Jan 15 18:01:48 2019

``` r
library(dplyr)
```

    ## 
    ## Attaching package: 'dplyr'

    ## The following objects are masked from 'package:stats':
    ## 
    ##     filter, lag

    ## The following objects are masked from 'package:base':
    ## 
    ##     intersect, setdiff, setequal, union

``` r
installed_packages_tbl <- installed.packages() %>% 
  as_tibble()

nrow(installed_packages_tbl)
```

    ## [1] 178
