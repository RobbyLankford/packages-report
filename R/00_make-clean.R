
library(fs)
library(here)
library(dplyr)
library(purrr)

# Make Clean

dir_delete(here("data"))
dir_delete(here("figs"))
