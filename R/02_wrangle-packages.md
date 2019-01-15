02\_wrangle-packages.R
================
rlank
Tue Jan 15 18:20:16 2019

``` r
## remember to restart R here!

library(readr)
library(here)
```

    ## Warning: package 'here' was built under R version 3.5.2

    ## here() starts at C:/Users/rlank/Documents/tmp/packages-report

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
library(scales)
```

    ## 
    ## Attaching package: 'scales'

    ## The following object is masked from 'package:readr':
    ## 
    ##     col_factor

``` r
## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path
package_info_tbl <- read_csv(here::here("data/installed-packages.csv"))
```

    ## Parsed with column specification:
    ## cols(
    ##   Package = col_character(),
    ##   LibPath = col_character(),
    ##   Version = col_character(),
    ##   Priority = col_character(),
    ##   Built = col_character()
    ## )

``` r
## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
package_info_filtered_tbl <- package_info_tbl %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
package_info_filtered_tbl %>%
  write_csv(here::here("data/add-on-packages.csv"), append = FALSE)

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
package_version_freq_tbl <- package_info_filtered_tbl %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path
package_version_freq_tbl %>%
  write_csv(here::here("data/add-on-packages-freqtable.csv"), append = FALSE)

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
```
