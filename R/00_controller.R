
library(fs)
library(here)
library(dplyr)
library(stringr)
library(purrr)

# Create directories if they do not exist

if (!dir_exists(here::here("figs"))) { dir_create(here::here("figs")) }
if (!dir_exists(here::here("data"))) { dir_create(here::here("data")) }

# Run all scripts in R subfolder (except make-clean.R and this script)

dir_ls(here("R")) %>%
  as_tibble() %>%
  slice(-(1:2)) %>%
  pull(value) %>%
  walk(~ source(.x))
