
#' ---
#' output: github_document
#' ---

library(dplyr)

installed_packages_tbl <- installed.packages() %>% 
  as_tibble()

nrow(installed_packages_tbl)
