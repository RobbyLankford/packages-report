01\_write-installed-packages.R
================
rlank
Tue Jan 15 18:19:52 2019

``` r
## deja vu from earlier!

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
library(here)
```

    ## Warning: package 'here' was built under R version 3.5.2

    ## here() starts at C:/Users/rlank/Documents/tmp/packages-report

``` r
library(readr)

## create a data frame of your installed packages
## hint: installed.packages() is the function you need
package_info_tbl <- installed.packages() %>%
  as_tibble()

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

package_info_subset_tbl <- package_info_tbl %>%
  select(Package, LibPath, Version, Priority, Built)

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
package_info_subset_tbl %>%
  write_csv(here::here("data/installed-packages.csv"), append = FALSE)

## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go
```
